---
name: nohasites
description: >
  Framework completo Noha para construir sites profissionais — landing pages,
  sites institucionais, portfolios, e-commerce leve. Cobre desde briefing até
  deploy: Astro 5 + Tailwind v4 + Cloudflare Pages, tipografia variável com
  personalidade (NUNCA Inter/Roboto/Arial), seções editoriais numeradas estilo
  dossier, animações com propósito, Lighthouse 90+, SEO técnico completo,
  tracking GA4+Pixel+CAPI via skill nohatracking. SEMPRE pergunta primeiro se
  há brandbook existente — se sim, segue o brandbook; se não, propõe direção.
  Use quando o usuário digitar /nohasites, pedir pra criar site, landing page,
  portfolio, site institucional, ou qualquer projeto web novo.
---

# Noha Sites — Framework completo

Framework opinionado para entregar sites com a identidade Noha: visual forte,
tipografia distintiva, performance impecável, tracking enterprise-grade. Roda
de ponta a ponta — do briefing ao deploy no Cloudflare.

## Quando invocar

- `/nohasites`
- "vamos criar um site / landing page / portfolio / site institucional"
- "construir site novo pra <cliente>"
- "preciso de um site pra <X>"
- "começar projeto web"

## Princípios não-negociáveis

1. **Brandbook primeiro.** Sempre perguntar antes de propor identidade visual.
2. **Visual nunca-genérico.** Banido: Inter, Roboto, Arial, Helvetica, Open
   Sans, Lato como display. Banido: gradient roxo-azul básico de template.
3. **Performance Lighthouse 90+** em Performance, Acessibilidade, SEO.
4. **SEO técnico completo** antes do deploy (OG, Twitter, JSON-LD, sitemap).
5. **Tracking sempre.** Toda entrega passa pela skill `nohatracking`.
6. **Mobile-first.** Toda decisão de layout pensa em mobile primeiro.
7. **LGPD respeitado.** Consentimento explícito para captura de PII.

## Stack padrão Noha

| Camada | Escolha | Quando usar |
|---|---|---|
| Framework | **Astro 5** | Default — landing, institucional, portfolio, blog. Zero JS por padrão. |
| Framework alt | **Next.js 15 + App Router** | Apenas se: SaaS, auth, dados dinâmicos, dashboards, API routes. |
| Styling | **Tailwind v4** com `@theme` tokens em `global.css` | Sempre. |
| Componentes | **shadcn/ui** + **21st.dev** + **Magic UI** quando aplicável | Sempre que houver interatividade. |
| Animações | CSS puro → Motion → GSAP+ScrollTrigger | Hierarquia por complexidade. |
| Deploy | **Cloudflare Pages** (Astro) ou **Cloudflare Workers + OpenNext** (Next.js) | Sempre Cloudflare. |
| Tracking | Skill `nohatracking` (GA4 + Pixel + CAPI server-side) | Sempre. |
| Imagens | AVIF > WebP, `astro:assets` ou `next/image` com `priority` no hero | Sempre. |

## Skills relacionadas a invocar

| Skill | Quando invocar | Para quê |
|---|---|---|
| `superpowers:brainstorming` | Fase 2 (briefing virou consenso, antes do design system) | Validar direção criativa com o usuário |
| `ui-ux-pro-max` | Fase 4 (design system) | Quando NÃO há brandbook — sugerir tipografia, paleta, layout style |
| `frontend-design` | Fase 6 (construção) | Garantir produção visual não-genérica |
| `nohatracking` | Fase 9 (tracking) | Stack completo GA4 + Pixel + CAPI |
| `copywriting` | Fase 6, sob demanda | Quando o usuário pede ajuda com copy de seções específicas |

# Fases

## Phase 0 — Brandbook check (CRITICAL — sempre antes de qualquer coisa)

**Primeira pergunta obrigatória:**

> "Antes de tudo: já existe um brandbook ou identidade visual definida para
> esse projeto? (logo, paleta de cores, fontes oficiais, manual de marca,
> referências visuais aprovadas)"

### Caminho A — Brandbook existe

1. Pedir os artefatos: logo (SVG preferencial), arquivos de fonte, paleta em
   HEX/RGB, manual em PDF se houver.
2. **Extrair tokens** e semear em `global.css`:
   ```css
   @theme {
     --color-brand-primary: #XX;
     --color-brand-secondary: #XX;
     --color-bg: #XX;
     --color-fg: #XX;
     --color-accent: #XX;
     --font-display: "<Brand Display>", ...;
     --font-sans: "<Brand Body>", ...;
   }
   ```
3. **Validar uso correto.** Se o brandbook tem regras de espaçamento mínimo
   do logo, hierarquia tipográfica, ou contraste, respeitar.
4. **NÃO sobrescrever** a identidade da marca com sugestões da skill. O
   trabalho é entregar o brandbook em forma de site, não recriar uma marca.

### Caminho B — Brandbook NÃO existe

1. Comunicar: "Como não temos brandbook, vou propor uma direção visual
   baseada no briefing. Você poderá ajustar ou pedir variações."
2. Invocar `ui-ux-pro-max` na Fase 4 para gerar opções de tipografia,
   paleta e style direction.
3. Apresentar 2-3 direções antes de implementar.

## Phase 1 — Briefing (uma pergunta por vez, estilo Socratic)

Não despejar todas as perguntas de uma vez. Conversar.

1. **Tipo de site?** (Service / Portfolio pessoal / E-commerce / SaaS /
   Conteúdo / Institucional / Landing de campanha)
2. **Qual é o objetivo principal?** (lead, venda, agendamento, exposição
   de portfolio, conscientização)
3. **Público-alvo principal?** (faixa etária, perfil, intenção)
4. **Tom desejado?** (premium / técnico / acolhedor / disruptivo /
   minimalista / luxuoso / nostálgico)
5. **Referências visuais aprovadas?** Pedir links ou Pinterest. Importante
   pra calibrar antes de propor.
6. **Conversões a rastrear?** (form, WhatsApp, agendamento, compra, scroll
   milestones, click de telefone)
7. **Captura de PII?** Telefone? Email? Nome? Vai pra WhatsApp ou pra CRM?
8. **Domínio?** (já registrado / a registrar / qual)
9. **Prazo e prioridade?** (semana / mês / "quando der")
10. **Conteúdo pronto?** (textos / imagens / vídeo) ou precisa criar/coletar.

Salvar respostas estruturadas para usar nas fases seguintes.

## Phase 2 — Brainstorm direção criativa

Invocar `superpowers:brainstorming` se a direção visual não estiver clara
após o briefing.

Apresentar 2-3 conceitos com:
- Adjetivo central (ex: "editorial dossier", "luxo discreto",
  "tech-cinematic", "warm artisanal")
- Referências visuais (sites, marcas)
- Sketch de layout do hero
- Sugestão de tipografia
- Sugestão de paleta

Aguardar escolha do usuário antes de seguir.

## Phase 3 — Decisão de stack

```
Site precisa de SSR / auth / dados dinâmicos / API routes / dashboards?
├── SIM → Next.js 15 + @opennextjs/cloudflare (Workers)
└── NÃO → Astro 5 + Cloudflare Pages (default Noha — mais rápido, mais barato)
```

Astro é o default. Só sair dele se houver razão técnica clara.

## Phase 4 — Design system (tokens)

### Tipografia (REGRA DURA)

**NUNCA usar:** Inter, Roboto, Arial, Helvetica, Open Sans, Lato, Montserrat,
Source Sans, Nunito como display ou body principal.

**Fontes Noha-aprovadas** (variable fonts com personalidade):

| Fonte | Categoria | Vibe | Sites onde funcionou |
|---|---|---|---|
| **Fraunces** | Serif display | Premium, escultural, editorial | Dra. Priscila Oshiro |
| **Cormorant Garamond** | Serif display | Luxo, joalheria, clássico | Ingrid Isikawa |
| **Syne** | Display sans | Wide, geométrica, bold, design-forward | — |
| **Cabinet Grotesk** | Sans display | High-contrast com personalidade | — |
| **Plus Jakarta Sans** | Body sans | Levemente quirky, neutra moderna | Priscila (body) |
| **Switzer** | Sans display+body | Refinada, mais personalidade que Inter | — |
| **Mona Sans** | Sans variable 3 eixos | Versátil, design system completo | — |
| **Space Grotesk** | Sans display | Monospaced feel, tech/SaaS | — |
| **Outfit** | Sans body | Geométrica limpa | — |
| **Raleway** | Sans body | Clean, refinada | Ingrid Isikawa |
| **DM Serif Display** | Serif display | High-contrast, editorial | — |
| **Azonix** (custom) | Display geométrica | Performance/automotive | Autoforce |
| **IBM Plex Sans** | Body sans mono-tinged | Tech, técnico | Autoforce (body) |

**Regra dos pares:** SEMPRE 1 fonte display + 1 fonte body. Máximo 2 fontes
no projeto inteiro (fora a fonte do logo se houver).

**Implementação Astro:**

```html
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link rel="preload" as="style" href="https://fonts.googleapis.com/css2?family=Fraunces:ital,opsz,wght,SOFT@0,9..144,300..600,30..100;1,9..144,300..600,30..100&family=Plus+Jakarta+Sans:wght@300;400;500;600;700&display=swap" />
<link rel="stylesheet" href="..." />
```

**Implementação Next.js:**

```tsx
import { Fraunces, Plus_Jakarta_Sans } from 'next/font/google'
const display = Fraunces({ subsets: ['latin'], variable: '--font-display', display: 'swap' })
const body = Plus_Jakarta_Sans({ subsets: ['latin'], variable: '--font-body', display: 'swap' })
```

### Paleta (regras)

- **1 background base** (warm neutral ou dark) — `--color-bg`
- **1 foreground principal** (alto contraste com bg) — `--color-fg`
- **1 cor accent única** (vermelho, champagne, burgundy, verde-musgo etc.)
  — `--color-accent`
- **1-2 tons de bg auxiliar** para superfícies (`--color-bg-2`, `--color-bg-3`)
- **2 tons muted** para texto secundário (`--color-fg-muted`,
  `--color-fg-subtle`)
- **1 linha sutil** para bordas (`--color-line`)

**Banido:** gradient roxo→azul template SaaS, neon stack, "all-the-colors".
A força vem de **uma cor accent única usada com parcimônia**.

### Spacing

Tailwind default (4px scale) está OK. Para seções, padronizar:
```css
.section { padding-block: 5rem; }    /* py-20 */
@media (min-width: 768px) {
  .section { padding-block: 7rem; }  /* md:py-28 */
}
```

### Tokens completos (template `global.css`)

```css
@import "tailwindcss";

@theme {
  /* Paleta */
  --color-bg: #FAF6F0;
  --color-bg-2: #F5EFE6;
  --color-bg-3: #EDE4D6;
  --color-fg: #0E0D0C;
  --color-fg-muted: #4A413B;
  --color-fg-subtle: #8A7F76;
  --color-accent: #B89473;
  --color-accent-hover: #97714F;
  --color-accent-text: #B89473;
  --color-line: rgba(14, 13, 12, 0.08);
  --color-line-strong: rgba(14, 13, 12, 0.16);

  /* Fontes */
  --font-display: "Fraunces", ui-serif, Georgia, serif;
  --font-sans: "Plus Jakarta Sans", ui-sans-serif, system-ui, sans-serif;

  /* Sombras */
  --shadow-luxe: 0 24px 64px -32px rgba(14, 13, 12, 0.45);
  --shadow-soft: 0 8px 24px -12px rgba(14, 13, 12, 0.18);
  --shadow-accent-glow-strong: 0 0 32px rgba(184, 148, 115, 0.35);

  /* Easing */
  --ease-out-expo: cubic-bezier(0.19, 1, 0.22, 1);

  /* Containers */
  --container-tight: 64rem;
  --container-prose: 48rem;
}

@layer base {
  html { -webkit-font-smoothing: antialiased; text-rendering: optimizeLegibility; scroll-behavior: smooth; }
  body { background: var(--color-bg); color: var(--color-fg); font-family: var(--font-sans); line-height: 1.55; }
  h1, h2, h3, h4 { font-family: var(--font-display); letter-spacing: -0.02em; line-height: 1.05; }
  ::selection { background: var(--color-accent); color: var(--color-bg); }
}

/* Grain texture utility — usar com .grain-overlay nas figures */
.grain-overlay {
  position: relative;
}
.grain-overlay::after {
  content: "";
  position: absolute;
  inset: 0;
  pointer-events: none;
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='160' height='160'><filter id='n'><feTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='2' stitchTiles='stitch'/></filter><rect width='100%25' height='100%25' filter='url(%23n)' opacity='0.6'/></svg>");
  opacity: 0.12;
  mix-blend-mode: overlay;
}
```

## Phase 5 — Scaffold

### Astro

```bash
npm create cloudflare@latest -- <project-name> --framework=astro --platform=pages
cd <project-name>
npm install -D @tailwindcss/vite@4 tailwindcss@4 sharp
npm install @astrojs/sitemap
npx astro add tailwind
```

Estrutura mínima:
```
src/
  components/
    ui/          # Button, Container, SectionHeading (primitives)
    Hero.astro
    Sobre.astro
    Servicos.astro
    Depoimentos.astro
    FAQ.astro
    Contato.astro
    WhatsappFloat.astro
    Analytics.astro
  layouts/
    BaseLayout.astro
  pages/
    index.astro
  styles/
    global.css
  assets/        # imagens otimizadas
  content/       # JSON de FAQ, depoimentos, serviços
public/
  og.jpg
  favicon.svg
  robots.txt
```

### Componentes primitives obrigatórios

**`Container.astro`** — wrapper com max-width consistente.

**`SectionHeading.astro`** — header padrão com eyebrow numerado:
```astro
---
interface Props { numberPrefix: string; eyebrow: string; title: string; align?: "left" | "center" }
const { numberPrefix, eyebrow, title, align = "left" } = Astro.props
---
<header class:list={["mb-12", align === "center" && "text-center"]}>
  <div class:list={["label-eyebrow text-[var(--color-accent-text)] mb-3 flex items-center gap-3", align === "center" && "justify-center"]}>
    <span class="h-px w-8 bg-[var(--color-accent)]"></span>
    <span class="font-bold tabular-nums">DOSSIÊ № {numberPrefix}</span>
    <span class="text-[var(--color-fg-subtle)]">{eyebrow}</span>
  </div>
  <h2 class="text-4xl md:text-6xl font-extrabold tracking-tight leading-[0.95]" style="font-family: var(--font-display)">
    {title}
  </h2>
</header>
```

**`Button.astro`** — variantes primary / secondary / ghost. Sempre uppercase
tracking-wide pra dar caráter editorial.

## Phase 6 — Construção por seção (padrão dossier Noha)

Ordem recomendada (adaptar conforme o tipo de negócio):

| Posição | Seção | Quando incluir | Componente |
|---|---|---|---|
| 1 | **Hero** | sempre | `Hero.astro` |
| 2 | **Faixa de prova/marquee** | quando há marcas/logos/stat | `TopMarquee.astro` ou `MarcasParceiras.astro` |
| 3 | **Sobre / Autoridade** (DOSSIÊ № 01 ou 02) | sempre em sites de serviço | `Sobre.astro` |
| 4 | **Serviços / Procedimentos** (DOSSIÊ № 02 ou 03) | sites de serviço/produto | `Servicos.astro` |
| 5 | **Resultados / Antes-Depois / Portfolio** | quando há prova visual | `Resultados.astro` |
| 6 | **Diferencial / Por que escolher** (DOSSIÊ № XX) | sempre | `Diferencial.astro` |
| 7 | **Depoimentos** (DOSSIÊ № XX) | sempre que houver | `Depoimentos.astro` |
| 8 | **FAQ** (DOSSIÊ № XX) | objeção pré-decisão | `FAQ.astro` |
| 9 | **CTA secundário (Instagram / Newsletter)** (DOSSIÊ № XX) | quando faz sentido | `Instagram.astro` |
| 10 | **Localização / Contato** (DOSSIÊ № XX) | negócio físico | `Localizacao.astro` |
| 11 | **Footer** | sempre | `Footer.astro` |

### Hero — padrão Noha

Anatomia:
1. **Eyebrow** com hairline (linha horizontal pequena + texto kerned wide)
2. **Headline display** gigante, com italic em palavra-chave OU accent color
   em uma palavra
3. **Subtitle** body, 2-3 linhas máximo
4. **2 CTAs**: primário (cor accent) + secundário (ghost/outline)
5. **Visual** em coluna lateral (image OU big watermark word OU mix)
6. **Stat row / proof points** abaixo dos CTAs (opcional, 3 items max)

Estilo: **assimetria** (text 7 cols + image 5 cols, ou inverso). NUNCA dois
blocos 50/50 iguais sem tensão visual.

### Watermark/decorative type

Sempre considerar um elemento tipográfico decorativo gigante:
- Letra/palavra grande no fundo do hero (faded, opacity ~5%)
- Número de seção grande no canto (eyebrow do dossier amplificado)
- Initial gigante atrás de heading de seção

Exemplos:
- Autoforce: "02" gigante atrás do Quem Somos
- Priscila: "Oshiro" italic no canto superior do Hero
- Padrão Noha geral: número do dossier como watermark

### Grain texture

Aplicar `.grain-overlay` em imagens de hero e cards principais. Adiciona
profundidade analógica e tira o "ar de site feito em template".

### Asymmetric editorial layouts

- **Dossiê pattern**: `.01 / .02 / .03` numbered paragraphs como coluna
  numerador. Funciona em seções tipo "Diferencial / Por que nós".
- **Callout boxes** sobre imagens: pequenas labels com border accent +
  bg semi-transparente.
- **SVG dividers** entre seções (linha sutil com pontos/notch).

## Phase 7 — Animações com propósito

**Hierarquia de decisão:**

1. **CSS puro** — hover, focus, loading, transições simples, reveal on scroll
   via `prefers-reduced-motion` + `IntersectionObserver` mínimo.
2. **Motion (`motion`)** — transições de UI, modais, listas, AnimatePresence,
   wizard step transitions. Quando o componente é React.
3. **GSAP + ScrollTrigger** — hero scroll, parallax, SVG path, storytelling
   cinematográfico. **Não usar a menos que o projeto peça**.

**Regra:** não animar tudo. Cada animação deve ter um propósito narrativo ou
funcional. Pisca-pisca é poluição visual.

**Sempre respeitar `prefers-reduced-motion`:**

```css
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0.01ms !important;
    transition-duration: 0.01ms !important;
  }
}
```

## Phase 8 — Performance & SEO

### Core Web Vitals targets

| Métrica | Alvo |
|---|---|
| LCP | < 2.5s |
| INP | < 200ms |
| CLS | < 0.1 |

### LCP — preload + priority image

```astro
<link rel="preload" as="image" href="/img/opt/hero-960.avif" type="image/avif" fetchpriority="high" />
```

Em `next/image` ou `astro:assets`: `priority` + `fetchpriority="high"` no
hero. AVIF > WebP > JPEG. Quality 85 para hero, 80 geral.

### CLS — reservar espaço

- `width`/`height` em toda `<img>` e `<Image>`.
- `font-display: swap` com `size-adjust` no CSS para reduzir layout shift de
  fonte.
- Reservar altura para conteúdo lazy (depoimentos carousel, etc.).

### SEO checklist obrigatório

```html
<title>{Title} - 45-65 chars</title>
<meta name="description" content="..." /> <!-- 120-155 chars -->
<link rel="canonical" href="..." />

<!-- Open Graph completo -->
<meta property="og:type" content="website" />
<meta property="og:title" content="..." />
<meta property="og:description" content="..." />
<meta property="og:image" content="..." /> <!-- 1200x630 -->
<meta property="og:image:width" content="1200" />
<meta property="og:image:height" content="630" />
<meta property="og:url" content="..." />
<meta property="og:locale" content="pt_BR" />

<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="..." />
<meta name="twitter:description" content="..." />
<meta name="twitter:image" content="..." />

<!-- JSON-LD: pelo menos Organization OU LocalBusiness OU Physician -->
<script type="application/ld+json">{...}</script>

<!-- Outros -->
<meta name="robots" content="index, follow, max-image-preview:large" />
<meta name="theme-color" content="..." />
```

Arquivos obrigatórios em `/public`:
- `robots.txt` (com sitemap)
- `sitemap.xml` (via `@astrojs/sitemap`)
- `og.jpg` 1200x630
- `favicon.svg` + `apple-touch-icon.png`

### Schema.org por tipo de negócio

| Tipo de site | Schema |
|---|---|
| Profissional autônomo (médico, advogado, dentista) | `Physician` ou `Person` + `MedicalBusiness` |
| Oficina / serviço local | `LocalBusiness` |
| E-commerce | `Organization` + `Product` |
| Conteúdo / blog | `WebSite` + `Article` |
| FAQ | sempre incluir `FAQPage` |

## Phase 9 — Tracking

**Invocar skill `nohatracking`** (clone em `~/.claude/skills/nohatracking`
ou via GitHub https://github.com/NohaConnect/nohatracking).

A skill cobre:
- GA4 + Meta Pixel client-side
- Meta CAPI server-side (Cloudflare Pages Function)
- Hashing SHA-256 de PII (telefone normalizado BR +55, nomes sem
  diacríticos, email lowercased)
- Deduplicação Pixel ↔ CAPI via `event_id`
- Persistência de hash entre sessões para boost EMQ
- LGPD-safe (PII raw nunca toca dataLayer/Pixel)

Eventos típicos a configurar:
- `page_view` (automático)
- `whatsapp_click` → Meta `Contact`
- `form_submit` ou `wizard_complete` → Meta `Lead`
- `phone_click` → Meta `Contact`
- `instagram_click` → só GA4 (engagement)
- `scroll_milestone_75` → custom GA4

## Phase 10 — Deploy Cloudflare

### Astro estático → Cloudflare Pages

```bash
npm run build
npx wrangler pages deploy dist --project-name=<slug> --branch=main --commit-dirty=true
```

Sem necessidade de `wrangler.toml` para output estático puro.

### Next.js dinâmico → Cloudflare Workers + OpenNext

```bash
npm install @opennextjs/cloudflare@latest
npm install --save-dev wrangler@latest
```

`wrangler.jsonc` mínimo:
```jsonc
{
  "main": ".open-next/worker.js",
  "name": "<slug>",
  "compatibility_date": "2025-04-01",
  "compatibility_flags": ["nodejs_compat"],
  "assets": { "directory": ".open-next/assets", "binding": "ASSETS" }
}
```

`package.json` scripts:
```json
{
  "preview": "opennextjs-cloudflare build && opennextjs-cloudflare preview",
  "deploy": "opennextjs-cloudflare build && opennextjs-cloudflare deploy"
}
```

### Custom domain

Depois do primeiro deploy, no dashboard Cloudflare:
- Pages → projeto → Custom domains → adicionar `dominio.com.br` e
  `www.dominio.com.br`
- DNS já fica configurado se o domínio estiver na própria Cloudflare; senão
  adicionar CNAME apontando pro `<slug>.pages.dev`

## Phase 11 — Checklist pré-deploy (regra dura)

Não considerar entregue até que TODOS estes itens estejam ✅:

- [ ] Lighthouse Performance ≥ 90 (mobile e desktop)
- [ ] Lighthouse Accessibility ≥ 90
- [ ] Lighthouse SEO ≥ 90
- [ ] Lighthouse Best Practices ≥ 90
- [ ] Mobile, tablet, desktop testados visualmente
- [ ] Dark mode funcional (se aplicável)
- [ ] Nenhuma fonte genérica (Inter/Roboto/Arial) renderizando
- [ ] Imagens AVIF/WebP, lazy load nas que não são acima do fold
- [ ] Hero image com `priority` + `fetchpriority="high"`
- [ ] Meta tags + OG + Twitter completas em todas as páginas
- [ ] JSON-LD válido no Schema.org validator
- [ ] Robots.txt + sitemap.xml acessíveis
- [ ] Links funcionais (sem 404, sem href="#")
- [ ] Formulários validados client-side com mensagens claras
- [ ] WhatsApp deeplink funcional (testar abrir o app)
- [ ] HTTPS ativo
- [ ] Tracking testado via DebugView do GA4 + Test Events do Meta
- [ ] Core Web Vitals passando em PageSpeed Insights
- [ ] Favicon + apple-touch-icon servindo
- [ ] `theme-color` no `<head>`
- [ ] `prefers-reduced-motion` respeitado
- [ ] LGPD: política de privacidade linkada do rodapé + checkbox de
      consentimento em forms que capturam PII

## Decisões opinionadas (não desviar sem motivo)

- **NUNCA** Inter, Roboto, Arial, Helvetica, Open Sans, Lato como fonte
  display ou body principal.
- **NUNCA** gradient roxo→azul template SaaS, neon stack, ou paleta de
  10+ cores.
- **NUNCA** Tailwind v3 em projeto novo — sempre v4.
- **NUNCA** Vercel ou Netlify — sempre Cloudflare.
- **NUNCA** GTM como caminho default — direto `gtag` + `fbq`. Só usar GTM
  se o cliente tem time de marketing que precisa de controle sem dev.
- **NUNCA** entregar sem o skill `nohatracking` configurado.
- **NUNCA** entregar sem JSON-LD válido pra Schema.org.
- **SEMPRE** 1 fonte display + 1 fonte body (máximo 2 no projeto).
- **SEMPRE** 1 cor accent única usada com parcimônia.
- **SEMPRE** numeração de seções DOSSIÊ № XX (ou variação adaptada ao
  brandbook).
- **SEMPRE** floating WhatsApp em sites de serviço com captura de lead.
- **SEMPRE** grain texture sutil em imagens de hero/cards principais.
- **SEMPRE** assimetria nos grids (7/5, 8/4, nunca 6/6 sem tensão).
- **SEMPRE** PT-BR como idioma default (lang="pt-BR").

## Common pitfalls

- **Cair em "design de portfolio AI"** — gradientes pastéis, ilustrações 3D
  rotation, glassmorphism genérico. Antídoto: começar do brandbook ou de
  uma referência editorial real.
- **Sobrecarregar com animações** — todo elemento animado distrai. Animar
  3-5 momentos chave por página, não tudo.
- **Esquecer mobile** — mobile-first é regra, não sugestão. Testar com
  DevTools 360px, 414px, e dispositivo real.
- **Cor accent fraca** — se o cliente pede "verde", testar 5 verdes
  diferentes antes de fixar. A cor accent precisa ter tensão com o bg.
- **Hero sem hierarquia** — eyebrow + headline + sub + CTA tem que ter
  contraste de tamanho ÓBVIO. Se o eyebrow parece o subtítulo, refazer.
- **Falta de visual proof** — sites de serviço sem foto/vídeo do trabalho
  real não convertem. Insistir em obter material.
- **Lighthouse < 90 e dar deploy mesmo assim** — bloqueador absoluto. Não
  entregar.
- **PII raw em dataLayer/Pixel** — a skill `nohatracking` previne isso, mas
  validar antes do deploy.
- **Esquecer `commit-dirty=true`** no deploy → wrangler bloqueia se houver
  mudanças locais não commitadas. Adicionar a flag.

## Projetos de referência (Noha)

Sites já entregues que materializam esse framework:

| Cliente | Vertical | Stack | Display | Body | Accent | Vibe |
|---|---|---|---|---|---|---|
| **Autoforce Performance** | Oficina de performance | Astro 5 | Azonix custom | IBM Plex Sans | Vermelho (#e10600) | Dossier técnico cinematográfico |
| **Dra. Priscila Oshiro** | Medicina estética | Astro 5 | Fraunces | Plus Jakarta Sans | Champagne (#B89473) | Luxo discreto, escultural |
| **Ingrid Isikawa** | Joalheria autoral | HTML estático | Cormorant Garamond | Raleway | Burgundy (#540D0D) | Editorial clássico, premium |

Cada um aplicou o framework adaptado ao brandbook do cliente. O esqueleto
(Hero → Sobre → Serviços → Depoimentos → FAQ → CTA → Contato), a tipografia
distintiva, a paleta com 1 accent forte, e o stack técnico (Astro +
Tailwind v4 + Cloudflare + nohatracking) são o denominador comum.

## Como o time usa

1. Clonar/atualizar este repositório como skill local:
   ```bash
   git clone https://github.com/NohaConnect/nohasites.git ~/.claude/skills/nohasites
   # ou
   cd ~/.claude/skills/nohasites && git pull
   ```
2. Dentro do Claude Code, invocar com `/nohasites` ou simplesmente "vamos
   criar um site novo pra <cliente>".
3. Seguir o fluxo de fases. A skill conduz, mas o humano decide.
4. Antes do deploy, rodar o checklist da Fase 11 sem pular itens.

## Versionamento

A skill é viva. Sempre que um site Noha for entregue, revisar se há padrão
novo a codificar aqui. Issue ou PR no repositório.

## Licença

MIT — use, fork, adapte. Atribuição não é obrigatória mas é apreciada.
