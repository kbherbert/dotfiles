---
name: oocss-bem-standards
description: 'Use when: reviewing, refactoring, or implementing CSS/SCSS for OOCSS, BEM, PascalCase component block naming, BlockName__element--modifier classes, SCSS ampersand nesting, adjacent component stylesheets, @iqies/ui-styles variables, and import ordering.'
argument-hint: 'Component/file path or CSS/SCSS snippet to review or refactor'
---

# OOCSS BEM Standards

Use this skill when reviewing or changing component styles that should follow Object Oriented CSS principles and the PascalCase BEM variant used with component-based UI code.

## Goal

Produce reusable, component-scoped styles that separate structure from skin, use predictable BEM class names, and stay consistent with the local styling system.

## Naming Rules

- Use PascalCase block names that match the component or major UI object: `.ListingCard`, `.LabDirectorSection`.
- Use BEM elements for parts that only make sense inside the block: `.BlockName__element`.
- Use modifiers for state or variants: `.BlockName--modifier` or `.BlockName__element--modifier`.
- Avoid generic private layout names such as `.col-name`, `.field`, `.row`, or `.wrapper` when a block-owned element name is clearer.
- Keep utility classes separate from BEM classes. Only use utility classes when they are intentionally shared utilities from the design system or framework.

## SCSS Structure

Prefer SCSS `&` nesting from the block selector:

```scss
@import '@iqies/ui-styles/variables';

.BlockName {
  &__header {
    margin-bottom: $spacing-md;
  }

  &__field-group {
    display: grid;
    gap: $spacing-sm;
  }

  &--readonly {
    pointer-events: none;
  }
}
```

When a project uses an app-level scope wrapper, keep the wrapper and still use `&` from the block:

```scss
.clia-demographics-wrapper .BlockName {
  &__description {
    color: $gray-600;
    margin-bottom: $spacing-md;
  }
}
```

## Import And File Placement

- Put component-scoped styles in the adjacent `.scss` file for the component or section.
- Import SCSS variables from `@iqies/ui-styles` when available, for example `@import '@iqies/ui-styles/variables';`.
- In TypeScript and React files, keep import order as external packages first, then internal package aliases, then local relative imports.
- In SCSS, keep design-system imports before component rules.

## Review Workflow

1. Identify the block class for the component and confirm it is PascalCase.
2. List every class used by the JSX/HTML and classify it as block, element, modifier, or intentional utility.
3. Rename generic private classes to block-owned BEM names.
4. Convert repeated expanded selectors to `&__element` or `&--modifier` nesting where it improves readability.
5. Replace hard-coded design tokens with variables from `@iqies/ui-styles` when matching variables exist.
6. Keep selectors shallow. Avoid styling deeply through DOM shape unless the child is not controllable or is a third-party component.
7. Verify JSX class names and SCSS selectors still match.
8. Run focused diagnostics or style checks when available.

## Decision Points

- If a class describes a reusable layout object across many components, keep or create it as a shared utility/object instead of forcing it into one block.
- If a class describes a child that only exists for one component, make it `.BlockName__child-name`.
- If a variation changes appearance or behavior of the same object, use `--modifier` instead of inventing a separate block.
- If using `&` would obscure the compiled selector, keep the selector explicit and favor clarity.
- If a project has an existing wrapper scope, preserve it unless the task is to change the styling architecture.

## Completion Checks

- Class names use `.BlockName`, `.BlockName__element`, and `.BlockName__element--modifier` or `.BlockName--modifier`.
- No accidental Bootstrap-like or generic private classes remain for component-specific elements.
- Component-specific SCSS is adjacent to the component.
- SCSS uses design-system variables instead of arbitrary color or spacing values where practical.
- Imports follow external, internal, then local ordering in TypeScript/React files.
- Diagnostics, stylelint, or focused build checks are clean, or any skipped verification is clearly reported.
