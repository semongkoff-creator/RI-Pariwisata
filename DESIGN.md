---
name: RI WISATA Pro-Institutional
colors:
  surface: '#f9f9ff'
  surface-dim: '#d3daef'
  surface-bright: '#f9f9ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f1f3ff'
  surface-container: '#e9edff'
  surface-container-high: '#e1e8fd'
  surface-container-highest: '#dce2f7'
  on-surface: '#141b2b'
  on-surface-variant: '#444651'
  inverse-surface: '#293040'
  inverse-on-surface: '#edf0ff'
  outline: '#757682'
  outline-variant: '#c5c5d3'
  surface-tint: '#4059aa'
  primary: '#00236f'
  on-primary: '#ffffff'
  primary-container: '#1e3a8a'
  on-primary-container: '#90a8ff'
  inverse-primary: '#b6c4ff'
  secondary: '#006591'
  on-secondary: '#ffffff'
  secondary-container: '#39b8fd'
  on-secondary-container: '#004666'
  tertiary: '#192756'
  on-tertiary: '#ffffff'
  tertiary-container: '#303d6d'
  on-tertiary-container: '#9ca9e0'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#dce1ff'
  primary-fixed-dim: '#b6c4ff'
  on-primary-fixed: '#00164e'
  on-primary-fixed-variant: '#264191'
  secondary-fixed: '#c9e6ff'
  secondary-fixed-dim: '#89ceff'
  on-secondary-fixed: '#001e2f'
  on-secondary-fixed-variant: '#004c6e'
  tertiary-fixed: '#dce1ff'
  tertiary-fixed-dim: '#b7c4fd'
  on-tertiary-fixed: '#071747'
  on-tertiary-fixed-variant: '#374475'
  background: '#f9f9ff'
  on-background: '#141b2b'
  surface-variant: '#dce2f7'
typography:
  h1-desktop:
    fontFamily: Plus Jakarta Sans
    fontSize: 56px
    fontWeight: '800'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  h1-mobile:
    fontFamily: Plus Jakarta Sans
    fontSize: 36px
    fontWeight: '800'
    lineHeight: '1.2'
    letterSpacing: -0.02em
  h2-desktop:
    fontFamily: Plus Jakarta Sans
    fontSize: 40px
    fontWeight: '700'
    lineHeight: '1.2'
    letterSpacing: -0.01em
  h3-pro:
    fontFamily: Plus Jakarta Sans
    fontSize: 24px
    fontWeight: '700'
    lineHeight: '1.3'
  body-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 15px
    fontWeight: '400'
    lineHeight: '1.65'
  body-sm:
    fontFamily: Plus Jakarta Sans
    fontSize: 14px
    fontWeight: '400'
    lineHeight: '1.65'
  button:
    fontFamily: Plus Jakarta Sans
    fontSize: 15px
    fontWeight: '600'
    lineHeight: '1'
    letterSpacing: 0.01em
  label-caps:
    fontFamily: Plus Jakarta Sans
    fontSize: 12px
    fontWeight: '700'
    lineHeight: '1'
    letterSpacing: 0.05em
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  container-max: 1280px
  gutter: 24px
  section-padding-y: 80px
  stack-gap: 16px
  grid-margin: 20px
---

## Brand & Style
The design system is engineered for a high-trust, institutional travel provider. The aesthetic prioritizes professional reliability and clarity over whimsical travel motifs. It utilizes a **Corporate / Modern** style characterized by structured layouts, precise geometry, and a focused palette of blues.

The target audience includes government procurement officers, BUMN administrators, and discerning individual travelers in the Lampung region. The UI must evoke a sense of operational excellence and stability. Visual weight is concentrated in high-contrast headings and functional sky-blue accents, avoiding the typical "tropical" aesthetic for a more disciplined, service-oriented presentation.

## Colors
The palette is strictly blue-scale to reinforce institutional trust. 
- **Primary Navy (#1E3A8A):** Reserved for structural identity, such as header strips and primary section headings.
- **Deep Navy (#172554):** Anchors the design in the footer, providing a solid foundation for the information architecture.
- **Accent Sky Blue (#0EA5E9):** The sole "action" color. Used for all CTAs, interactive states, pricing, and ratings. It must stand out clearly against both white and light gray backgrounds.
- **Text:** Headings use a high-contrast charcoal for readability, while body text utilizes a softer slate to reduce eye strain during long-form reading of itineraries.
- **Backgrounds:** Alternating sections use a very subtle cool gray (#F5F6F8) to define content blocks without the need for heavy borders.

## Typography
This design system utilizes **Plus Jakarta Sans** exclusively to maintain a contemporary yet professional atmosphere. 

H1 headings use ExtraBold weight with tight tracking to create a commanding presence in hero sections. Body copy is set at a comfortable 14-15px with generous line spacing (1.65) to accommodate dense itinerary details and institutional disclosures. All labels and buttons should maintain a high degree of legibility, prioritizing clear communication over decorative styling.

## Layout & Spacing
The layout follows a **Fixed Grid** model on desktop, centering content within a 1280px container to ensure maximum readability on enterprise-grade monitors. 

- **Desktop:** 12-column grid with 24px gutters. Sections are separated by 80px-100px of vertical padding to maintain a breathable, "premium" feel.
- **Mobile:** Single column with 20px side margins.
- **Institutional Trust Strip:** A horizontal flex-row of partner logos. Grayscale by default with a transition to full color on hover to indicate partnership vitality.
- **Hero Widget:** The search/booking widget should overlay the bottom 25% of the hero image, acting as a bridge between the immersive visual and the functional data entry.

## Elevation & Depth
Depth is handled through **Tonal Layers** and **Subtle Hover Elevations**. 

Instead of traditional drop shadows, use thin 1px borders (#E5E7EB) for card elements. Upon hover, apply a soft, diffused ambient shadow (0px 10px 15px -3px rgba(30, 58, 138, 0.08)) to lift the element. This creates a responsive, tactile feel without breaking the professional "flat" aesthetic. The search widget in the hero section is the only element that should possess a permanent medium-depth shadow to distinguish it from the background imagery.

## Shapes
The design system employs a **Soft (4px)** corner radius across all interactive components (buttons, inputs, card containers). This "near-sharp" geometry communicates precision and formality, distancing the brand from more consumer-oriented "bubbly" apps. Only the floating WhatsApp button deviates from this, using a full circle/pill shape to adhere to global platform recognition.

## Components
- **Primary Buttons:** Solid #0EA5E9 background, white text, 4px radius. Height: 48px for prominence.
- **Input Fields:** 1px border (#D1D5DB), 4px radius. On focus, the border changes to #1E3A8A with a 2px outer glow of #0EA5E9 at 20% opacity.
- **Cards (Tours/Packages):** White background, 1px light gray border. Images should have 0px radius at the top to sit flush with the card container's 4px top corners.
- **Star Ratings:** Solid #0EA5E9 color for icons.
- **Institutional Trust Strip:** Grayscale logos, maximum height 40px, distributed with "space-between" logic.
- **Floating Action Button:** WhatsApp green (#25D366) with a white icon, positioned at the bottom right with a 24px offset.
- **Footer:** Deep Navy background with white headings and Sky Blue hover states for links.