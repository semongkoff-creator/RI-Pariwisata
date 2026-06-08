Add-Type -AssemblyName System.Drawing

$sourceDir = Join-Path $PSScriptRoot 'dipercaya oleh'
$outputDir = Join-Path $sourceDir 'trans'

if (-not (Test-Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir | Out-Null
}

function Get-BackgroundColor {
    param([System.Drawing.Bitmap]$Bitmap)

    $points = @(
        @{ X = 0; Y = 0 },
        @{ X = $Bitmap.Width - 1; Y = 0 },
        @{ X = 0; Y = $Bitmap.Height - 1 },
        @{ X = $Bitmap.Width - 1; Y = $Bitmap.Height - 1 }
    )

    $sumR = 0
    $sumG = 0
    $sumB = 0
    foreach ($p in $points) {
        $c = $Bitmap.GetPixel($p.X, $p.Y)
        $sumR += $c.R
        $sumG += $c.G
        $sumB += $c.B
    }

    return [System.Drawing.Color]::FromArgb([int]($sumR / $points.Count), [int]($sumG / $points.Count), [int]($sumB / $points.Count))
}

function Get-ColorDistance {
    param(
        [System.Drawing.Color]$A,
        [System.Drawing.Color]$B
    )

    $dr = $A.R - $B.R
    $dg = $A.G - $B.G
    $db = $A.B - $B.B
    return [math]::Sqrt(($dr * $dr) + ($dg * $dg) + ($db * $db))
}

function Convert-ToTransparentPng {
    param(
        [string]$InputPath,
        [string]$OutputPath
    )

    $src = [System.Drawing.Bitmap]::FromFile($InputPath)
    try {
        $bg = Get-BackgroundColor -Bitmap $src
        $dst = New-Object System.Drawing.Bitmap($src.Width, $src.Height, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
        try {
            for ($y = 0; $y -lt $src.Height; $y++) {
                for ($x = 0; $x -lt $src.Width; $x++) {
                    $c = $src.GetPixel($x, $y)
                    $dist = Get-ColorDistance -A $c -B $bg

                    if ($dist -le 42) {
                        $alpha = 0
                    } elseif ($dist -le 68) {
                        $alpha = [int](255 * (($dist - 42) / 26))
                    } else {
                        $alpha = 255
                    }

                    if ($alpha -lt 0) { $alpha = 0 }
                    if ($alpha -gt 255) { $alpha = 255 }

                    $new = [System.Drawing.Color]::FromArgb($alpha, $c.R, $c.G, $c.B)
                    $dst.SetPixel($x, $y, $new)
                }
            }

            $dst.Save($OutputPath, [System.Drawing.Imaging.ImageFormat]::Png)
        }
        finally {
            $dst.Dispose()
        }
    }
    finally {
        $src.Dispose()
    }
}

$targets = @(
    @{ Input = 'images.png'; Output = 'bank-indonesia.png' },
    @{ Input = 'download.png'; Output = 'dinas-kehutanan.png' },
    @{ Input = 'images (4).jpg'; Output = 'pelindo.png' },
    @{ Input = 'download (4).jpg'; Output = 'sma-negeri-1-kotaagung.png' },
    @{ Input = 'download (5).jpg'; Output = 'igtki.png' },
    @{ Input = 'Danamon.svg.png'; Output = 'danamon.png' },
    @{ Input = 'logo.png'; Output = 'ri-wisata.png' }
)

foreach ($item in $targets) {
    $inputPath = Join-Path $sourceDir $item.Input
    $outputPath = Join-Path $outputDir $item.Output
    Convert-ToTransparentPng -InputPath $inputPath -OutputPath $outputPath
    Write-Output "Wrote $outputPath"
}
