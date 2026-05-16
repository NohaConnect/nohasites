# nohasites

Framework completo da **Noha** para construir sites profissionais com identidade visual forte, performance impecável e tracking enterprise-grade. Skill do Claude Code que conduz do briefing ao deploy, mantendo o padrão visual e técnico que entregamos em todos os projetos.

## Por que essa skill existe

Toda vez que a Noha entrega um site, o esqueleto técnico é o mesmo:

- **Astro 5 + Tailwind v4 + Cloudflare Pages** como stack default.
- **Tipografia variável distintiva** — nunca Inter/Roboto/Arial.
- **Seções editoriais numeradas** estilo dossier (DOSSIÊ № XX).
- **Uma cor accent única** trabalhada com parcimônia.
- **Performance Lighthouse 90+** em todas as métricas.
- **SEO técnico completo** com OG, Twitter, JSON-LD, sitemap.
- **Tracking GA4 + Meta Pixel + Meta CAPI** via skill [nohatracking](https://github.com/NohaConnect/nohatracking).

O que muda de site pra site é o brandbook (cores, fontes, logo) e a verticais (estética da clínica, automotive, joalheria etc.). O esqueleto e os princípios são fixos.

Esta skill encapsula esse processo em 12 fases (0 a 11), com a Fase 0 sendo **"existe brandbook?"** — porque é a decisão que define tudo o que vem depois.

## Instalação

```bash
git clone https://github.com/NohaConnect/nohasites.git ~/.claude/skills/nohasites
```

Pra atualizar quando houver mudanças:

```bash
cd ~/.claude/skills/nohasites && git pull
```

Dentro do Claude Code, invoque com `/nohasites` ou simplesmente diga "vamos criar um site novo pra <cliente>".

## Fluxo da skill (visão geral)

```
Phase 0 — Brandbook check (CRITICAL)
  ├─ existe? → extrair tokens, seguir brandbook
  └─ não existe? → propor direção via ui-ux-pro-max

Phase 1 — Briefing socrático
  Tipo de site, objetivo, público, tom, referências, conversões, prazo

Phase 2 — Brainstorm criativo (invoca superpowers:brainstorming)
  2-3 direções com sketch + referências + tipografia + paleta

Phase 3 — Stack
  Astro 5 (default) ou Next.js 15 (apenas com motivo técnico)

Phase 4 — Design system (tokens)
  Tipografia, paleta, spacing, shadows, easing — em global.css com @theme

Phase 5 — Scaffold
  Projeto, dependências, estrutura de pastas, componentes primitives

Phase 6 — Construção por seção
  Hero → Sobre → Serviços → Resultados → Depoimentos → Diferencial →
  FAQ → CTA secundário → Localização → Footer

Phase 7 — Animações com propósito
  CSS → Motion → GSAP, sempre respeitando prefers-reduced-motion

Phase 8 — Performance & SEO
  Core Web Vitals, OG, JSON-LD, sitemap, robots

Phase 9 — Tracking (invoca nohatracking)
  GA4 + Pixel + CAPI server-side com hashing SHA-256 de PII

Phase 10 — Deploy Cloudflare
  Pages (Astro) ou Workers + OpenNext (Next.js)

Phase 11 — Checklist pré-deploy
  20+ itens de verificação obrigatórios
```

## Skills relacionadas

| Skill | Função | Quando é invocada |
|---|---|---|
| [`nohatracking`](https://github.com/NohaConnect/nohatracking) | Stack de tracking | Phase 9 |
| `superpowers:brainstorming` | Refinar direção criativa | Phase 2 |
| `ui-ux-pro-max` | Sugerir tipografia, paleta, layout quando não há brandbook | Phase 4 |
| `frontend-design` | Produção visual não-genérica | Phase 6 |
| `copywriting` | Refinar copy de seções específicas | Phase 6 (sob demanda) |

## Projetos de referência

Sites Noha já entregues que materializam esse framework:

| Cliente | Vertical | Display | Body | Accent |
|---|---|---|---|---|
| **Autoforce Performance** | Oficina performance | Azonix | IBM Plex Sans | Vermelho `#e10600` |
| **Dra. Priscila Oshiro** | Medicina estética | Fraunces | Plus Jakarta Sans | Champagne `#B89473` |
| **Ingrid Isikawa** | Joalheria autoral | Cormorant Garamond | Raleway | Burgundy `#540D0D` |

O que une os três: stack idêntico, padrão de seções, tipografia distintiva, paleta com 1 accent, tracking via `nohatracking`. O que diferencia: brandbook de cada cliente.

## Princípios não-negociáveis

1. **Brandbook primeiro.** Sempre perguntar antes de propor identidade visual.
2. **Visual nunca-genérico.** Fontes proibidas: Inter, Roboto, Arial, Helvetica, Open Sans, Lato.
3. **Lighthouse 90+** em Performance, Acessibilidade, SEO, Best Practices.
4. **SEO técnico completo** antes do deploy.
5. **Tracking sempre** via `nohatracking`.
6. **Mobile-first** em toda decisão de layout.
7. **LGPD respeitado** — consentimento explícito para captura de PII.

## Stack opinionado

- **Astro 5** como default (Next.js só se tiver SSR/auth/API).
- **Tailwind v4** com `@theme` em `global.css`.
- **Cloudflare Pages** ou **Workers + OpenNext** — nunca Vercel/Netlify.
- **shadcn/ui + 21st.dev + Magic UI** quando precisa de interatividade.
- **Motion** para transições React, **GSAP** só pra storytelling complexo.
- **AVIF > WebP > JPEG**, lazy load com `priority` no hero.

## Como contribuir

A skill é viva. Quando você entregar um site Noha:

1. Identificou um padrão novo? Abre PR adicionando à seção apropriada.
2. Achou um pitfall novo? Adiciona em "Common pitfalls".
3. Encontrou um par fonte/paleta que funciona muito bem? Documenta em "Fontes Noha-aprovadas".

## Licença

MIT — veja [LICENSE](LICENSE). Use, fork, adapte.
