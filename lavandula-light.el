;; LAVANDULA LIGHT THEME

;; MIT License

;; Copyright (c) 2025 CONCEPTOFLUKE

;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be included in all
;; copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

(deftheme lavandula-light
  "Mostly monochromatic Emacs theme | Light variant"
  :background-mode 'light)

(let ((class '((class color) (min-colors 89)))
      ;; Backgrounds
      (bg "#fbf9ff")
      (bg-dim "#e4ddef")
      (bg-dark "#bbb5c4")
      ;; Foregrounds
      (fg "#1e1f29")
      (fg-intense "#030008")
      (fg-subdued "#585979")
      (fg-faint "#c7c8d6")
      ;; Colours
      (lavender "#a2a3bb")
      (lavender-intense "#a77aff"))
  (custom-theme-set-faces
   'lavandula-light
   `(default ((,class (:background ,bg :foreground ,fg))))
   `(bold ((,class (:weight semi-bold))))
   ;;; Prog-mode
   `(font-lock-builtin-face ((,class (:foreground ,fg))))
   `(font-lock-comment-face ((,class (:foreground ,fg-subdued))))
   `(font-lock-doc-face ((,class (:inherit font-lock-comment-face))))
   `(font-lock-function-name-face ((,class (:foreground ,fg-intense))))
   `(font-lock-keyword-face ((,class (:foreground ,fg-intense))))
   `(font-lock-string-face ((,class (:foreground ,fg-intense))))
   `(font-lock-type-face ((,class (:foreground ,fg-intense))))
   `(font-lock-variable-name-face ((,class (:foreground ,fg-intense))))
   `(font-lock-constant-face ((,class (:foreground ,fg))))
   `(font-lock-warning-face ((,class (:foreground ,lavender-intense))))
   ;;; Highlights
   `(region ((,class (:background ,bg-dark :foreground ,fg-intense))))
   `(highlight ((,class (:foreground ,fg :background ,bg-dim))))
   `(hl-line ((,class (:background ,bg-dim))))
   `(fringe ((,class (:background ,bg))))
   `(cursor ((,class (:background ,lavender))))
   `(isearch ((,class (:bold t :foreground ,fg :background ,bg-dim))))
   ;;; Mode-line
   `(mode-line ((,class (:box (:line-width 1 :color ,bg-dim) :foreground ,fg :background ,bg-dim))))
   `(mode-line-inactive ((,class (:box (:line-width 1 :color ,bg) :foreground ,fg-faint :background ,bg))))
   `(mode-line-buffer-if ((,class (:bold t :foreground ,fg-intense))))
   `(minibuffer-prompt ((,class (:foreground ,fg-subdued))))
   ;;; Org-mode
   `(org-level-1 ((,class (:bold t :foreground ,fg-intense))))
   `(org-level-2 ((,class (:foreground ,fg-intense))))
   `(org-level-3 ((,class (:foreground ,fg))))
   `(org-level-4 ((,class (:foreground ,fg))))
   `(org-level-5 ((,class (:foreground ,fg))))
   `(org-level-6 ((,class (:foreground ,fg))))
   `(org-level-7 ((,class (:foreground ,fg))))
   `(org-level-8 ((,class (:foreground ,fg))))
   `(org-date ((,class (:foreground ,fg-subdued))))
   `(org-block ((,class (:background ,bg-dim))))
   `(org-block-begin-line ((,class (:foreground ,fg-faint))))
   `(org-block-end-line ((,class (:foreground ,fg-faint))))
   `(org-todo ((,class (:foreground ,lavender-intense))))
   `(org-done ((,class (:bold nil :foreground ,fg-subdued))))
   `(org-meta-line ((,class (:foreground ,fg-faint))))
   `(org-tag ((,class (:foreground ,fg-faint))))
   `(org-drawer ((,class (:foreground ,fg-faint))))
   `(org-special-keyword ((,class (:foreground ,fg-subdued))))
   `(org-property-value ((,class (:foreground ,fg))))
   `(org-table ((,class (:foreground ,fg-subdued))))
   `(org-link ((,class (:bold t :foreground ,fg-intense))))
   ;;; Dired
   `(diredp-dir-heading ((,class (:background ,bg-dark :foreground ,fg))))
   `(diredp-dir-name ((,class (:background ,bg-dim :foreground ,fg))))
   `(diredp-file-name ((,class (:foreground ,fg-intense))))
   `(diredp-file-suffix ((,class (:foreground ,fg-subdued))))
   `(diredp-omit-file-name ((,class (:foreground ,fg-faint))))
   `(diredp-symlink ((,class (:bold t :foreground ,fg-intense))))))

(provide-theme 'lavandula-light)
      
