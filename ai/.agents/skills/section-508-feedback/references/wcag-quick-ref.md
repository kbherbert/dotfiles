# WCAG 2.1 Quick Reference (Summary)

## 1. Perceivable

### 1.1 Text Alternatives
- **1.1.1 Non-text Content (Level A)**  
  All non-text content has a text alternative that serves the equivalent purpose.

### 1.2 Time-based Media
- **1.2.1 Audio-only and Video-only (Level A)**  
  Alternatives are provided for prerecorded audio-only and video-only content.

- **1.2.2 Captions (Prerecorded) (Level A)**  
  Captions are provided for all prerecorded audio content in synchronized media.

- **1.2.3 Audio Description or Media Alternative (Level A)**  
  An alternative for time-based media or audio description is provided.

- **1.2.4 Captions (Live) (Level AA)**  
  Captions are provided for all live audio content in synchronized media.

- **1.2.5 Audio Description (Prerecorded) (Level AA)**  
  Audio description is provided for all prerecorded video content.

### 1.3 Adaptable
- **1.3.1 Info and Relationships (Level A)**  
  Information, structure, and relationships conveyed through presentation are programmatically determinable.

- **1.3.2 Meaningful Sequence (Level A)**  
  A correct reading sequence can be programmatically determined when sequence affects meaning.

- **1.3.3 Sensory Characteristics (Level A)**  
  Instructions do not rely solely on sensory characteristics (shape, color, size, sound).

- **1.3.4 Orientation (Level AA)**  
  Content does not restrict operation to a single display orientation.

- **1.3.5 Identify Input Purpose (Level AA)**  
  The purpose of each input field can be programmatically determined.

### 1.4 Distinguishable
- **1.4.1 Use of Color (Level A)**  
  Color is not used as the only visual means of conveying information.

- **1.4.2 Audio Control (Level A)**  
  Automatic audio has controls to pause, stop, or adjust volume.

- **1.4.3 Contrast (Minimum) (Level AA)**  
  Text contrast is at least 4.5:1 (3:1 for large text).

- **1.4.4 Resize Text (Level AA)**  
  Text can be resized up to 200% without loss of content or functionality.

- **1.4.5 Images of Text (Level AA)**  
  Text is used instead of images of text when possible.

- **1.4.10 Reflow (Level AA)**  
  Content reflows without loss of information at 320px width.

- **1.4.11 Non-text Contrast (Level AA)**  
  UI components and graphics have at least 3:1 contrast.

- **1.4.12 Text Spacing (Level AA)**  
  No loss of content occurs when text spacing is adjusted.

- **1.4.13 Content on Hover or Focus (Level AA)**  
  Additional content is dismissible, hoverable, and persistent.

---

## 2. Operable

### 2.1 Keyboard Accessible
- **2.1.1 Keyboard (Level A)**  
  All functionality is available from a keyboard.

- **2.1.2 No Keyboard Trap (Level A)**  
  Keyboard focus can move away from any component.

- **2.1.4 Character Key Shortcuts (Level A)**  
  Letter-based shortcuts can be turned off or remapped.

### 2.2 Enough Time
- **2.2.1 Timing Adjustable (Level A)**  
  Time limits can be turned off, adjusted, or extended.

- **2.2.2 Pause, Stop, Hide (Level A)**  
  Moving or auto-updating content can be paused or stopped.

### 2.3 Seizures
- **2.3.1 Three Flashes or Below (Level A)**  
  Content does not flash more than three times per second.

### 2.4 Navigable
- **2.4.1 Bypass Blocks (Level A)**  
  Users can bypass repeated content blocks.

- **2.4.2 Page Titled (Level A)**  
  Pages have descriptive titles.

- **2.4.3 Focus Order (Level A)**  
  Focus order preserves meaning and operability.

- **2.4.4 Link Purpose (Level A)**  
  Link purpose can be determined from text or context.

- **2.4.5 Multiple Ways (Level AA)**  
  Multiple ways exist to locate pages.

- **2.4.6 Headings and Labels (Level AA)**  
  Headings and labels describe purpose.

- **2.4.7 Focus Visible (Level AA)**  
  Keyboard focus indicators are visible.

### 2.5 Input Modalities
- **2.5.1 Pointer Gestures (Level A)**  
  Multi-point gestures have single-pointer alternatives.

- **2.5.2 Pointer Cancellation (Level A)**  
  Actions complete on release of the pointer.

- **2.5.3 Label in Name (Level A)**  
  Accessible names contain visible label text.

- **2.5.4 Motion Actuation (Level A)**  
  Motion-based actions also work with UI controls.

---

## 3. Understandable

### 3.1 Readable
- **3.1.1 Language of Page (Level A)**  
  The page’s default language is programmatically determined.

- **3.1.2 Language of Parts (Level AA)**  
  Changes in language are programmatically indicated.

### 3.2 Predictable
- **3.2.1 On Focus (Level A)**  
  Receiving focus does not change context.

- **3.2.2 On Input (Level A)**  
  Input changes do not trigger unexpected context changes.

- **3.2.3 Consistent Navigation (Level AA)**  
  Repeated navigation appears in the same order.

- **3.2.4 Consistent Identification (Level AA)**  
  Components with the same function are identified consistently.

### 3.3 Input Assistance
- **3.3.1 Error Identification (Level A)**  
  Errors are identified and described in text.

- **3.3.2 Labels or Instructions (Level A)**  
  Labels or instructions are provided for user input.

- **3.3.3 Error Suggestion (Level AA)**  
  Suggestions for correcting errors are provided when known.

- **3.3.4 Error Prevention (Level AA)**  
  Submissions for legal or financial actions are reversible, checked, or confirmed.

---

## 4. Robust

### 4.1 Compatible
- **4.1.1 Parsing (Level A)**  
  Markup is well-formed and follows specifications.

- **4.1.2 Name, Role, Value (Level A)**  
  UI components expose name, role, and value programmatically.

- **4.1.3 Status Messages (Level AA)**  
  Status messages are programmatically determinable without focus.