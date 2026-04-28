---
name: section-508-feedback
description: 'Audit UI components, HTML, and templates for Section 508 / WCAG 2.1 AA compliance and annotate violations as inline code comments. Use when reviewing accessibility, checking 508 conformance, auditing ARIA, color contrast, keyboard navigation, screen reader support, form labels, alt text, table structure, or producing accessibility feedback on code.'
argument-hint: 'path or component to audit (e.g. src/components/Modal.tsx)'
---

# Section 508 / WCAG 2.1 AA Feedback

Produces inline code comments that identify and describe Section 508 violations in UI components, HTML templates, and related code.

## When to Use
- Accessibility review before a release or PR merge
- Auditing a component, page, or feature for 508 conformance
- Generating developer-actionable feedback without switching to an external tool

## Audit Checklist

Work through each category below. For every violation found, add an inline comment directly above the offending code (see [Comment Format](#comment-format)).

### 1. Keyboard Navigation & Focus Management
- [ ] All interactive elements reachable via `Tab` / `Shift+Tab`
- [ ] Logical focus order matches visual reading order
- [ ] No keyboard traps (focus can always leave a widget)
- [ ] Custom widgets implement correct keyboard interaction patterns (arrow keys for composites, `Escape` to close, etc.)
- [ ] Visible focus indicator present and sufficient contrast (3:1 minimum against adjacent color)
- [ ] `tabindex` values are `0` or `-1` only; positive values avoided
- [ ] Modal dialogs trap focus inside and restore it on close

### 2. Color & Contrast
- [ ] Normal text: ≥ 4.5:1 contrast ratio (WCAG 1.4.3 AA)
- [ ] Large text (≥ 18pt / 14pt bold): ≥ 3:1 contrast ratio
- [ ] UI components and focus indicators: ≥ 3:1 against adjacent colors (WCAG 1.4.11)
- [ ] Information is not conveyed by color alone (WCAG 1.4.1)

### 3. ARIA Roles, Labels & Live Regions
- [ ] Landmark roles used correctly (`main`, `nav`, `banner`, `contentinfo`, `complementary`, `search`)
- [ ] Every interactive element has an accessible name (`aria-label`, `aria-labelledby`, or visible label)
- [ ] `aria-describedby` used for supplementary descriptions
- [ ] `aria-expanded`, `aria-haspopup`, `aria-selected`, `aria-checked` states kept in sync with visual state
- [ ] `aria-live` regions used for dynamic content; `role="alert"` for urgent messages
- [ ] No conflicting or redundant roles (e.g., `role="button"` on a `<button>`)
- [ ] `aria-hidden="true"` used to remove decorative elements from the accessibility tree

### 4. Images & Non-Text Content (WCAG 1.1.1)
- [ ] Informative images: `alt` attribute describes purpose/content
- [ ] Decorative images: `alt=""` (empty) so screen readers skip them
- [ ] Complex images (charts, diagrams): long description provided nearby or via `aria-describedby`
- [ ] SVG: `<title>` and/or `aria-label` present; decorative SVGs use `aria-hidden="true"`
- [ ] Icon-only buttons: accessible name provided (not just the icon glyph)

### 5. Forms & Error Identification (WCAG 1.3.1, 3.3.1, 3.3.2)
- [ ] Every input associated with a visible `<label>` (or `aria-label` / `aria-labelledby`)
- [ ] Required fields communicated (`aria-required="true"` and visual indicator)
- [ ] Error messages programmatically associated with the field (`aria-describedby` or `aria-errormessage`)
- [ ] Error messages describe the problem and suggest correction (WCAG 3.3.3)
- [ ] Input purpose identified for personal data fields (`autocomplete` attribute, WCAG 1.3.5)
- [ ] No timeout that deletes data without warning or ability to extend

### 6. Tables & Data Structures (WCAG 1.3.1)
- [ ] Data tables use `<th>` with `scope="col"` or `scope="row"`
- [ ] Complex tables use `id` + `headers` association
- [ ] `<caption>` or `aria-label` provides table description
- [ ] Layout tables do not use `<th>`, `scope`, or `summary`

### 7. Screen Reader Compatibility
- [ ] Meaningful reading order when linearized (no CSS-only reordering that breaks DOM sequence)
- [ ] Dynamic content changes announced via `aria-live` or focus management
- [ ] Page `<title>` is descriptive and unique
- [ ] Language of page set (`lang` on `<html>`); language changes within content use `lang` on the element
- [ ] Repeated navigation can be bypassed (`skip to main content` link, or landmark regions)

---

## Comment Format

Annotate violations inline using this structure:

```
// 508-VIOLATION [<WCAG criterion>] [<severity>]: <short description>
// DETAIL: <what is wrong and why it matters>
// FIX: <concrete remediation step>
```

**Severity levels:**
| Level | Meaning |
|-------|---------|
| `CRITICAL` | Blocks access entirely for users of assistive technology |
| `MAJOR` | Significantly impedes use; likely a conformance failure |
| `MINOR` | Reduces quality or creates friction; best-practice issue |

**Example:**
```html
<!-- 508-VIOLATION [WCAG 1.1.1] [CRITICAL]: Icon button missing accessible name -->
<!-- DETAIL: <button> contains only an SVG icon with no text or aria-label. Screen readers will announce nothing meaningful. -->
<!-- FIX: Add aria-label="Close dialog" to the <button>, or add a visually-hidden <span> inside it. -->
<button class="close-btn"><svg>...</svg></button>
```

---

## Procedure

1. **Read the target file(s)** — understand the component structure before auditing.
2. **Work through the checklist** category by category (keyboard → contrast → ARIA → images → forms → tables → screen reader).
3. **Add inline comments** for each violation using the format above. Place comments directly above the offending line.
4. **Skip passing items** — only comment on violations, not conforming code.
5. **Summarize** at the top of the file (or in your reply) with a count by severity:
   ```
   // 508-AUDIT SUMMARY: 2 CRITICAL, 3 MAJOR, 1 MINOR
   ```
6. If the scope argument is a directory, audit each relevant file and produce a combined summary.

---

## References
- [WCAG 2.1 Quick Reference](./references/wcag-quick-ref.md)
- [ARIA Authoring Practices Guide (APG)](https://www.w3.org/WAI/ARIA/apg/)
- [Section 508 ICT Standards](https://www.access-board.gov/ict/)
