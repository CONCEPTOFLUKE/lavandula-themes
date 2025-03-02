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
  "Mostly monochromatic Emacs theme - Light variant"
  :background-mode 'light
  :kind 'color-scheme)

(let ((class '((class color) (min-colors 89)))

      (black "#030008")
      (white "#fbf9ff")
      (lavender "#a2a3bb")
      (l50 "#f6f6f9")
      (l100 "#ededf2")
      (l200 "#d9d9e3")
      (l300 "#c7c8d6")
      (l400 "#b5b6c9")
      (l600 "#7a7c9e")
      (l700 "#585979")
      (l800 "#3a3b50")
      (l900 "#1e1f29")
      (l950 "#0f0f15"))
  (custom-theme-set-faces
   'lavandula-light
   `(default ((,class (:background ,white :foreground ,black))))
   `(bold ((,class (:weight semi-bold))))
   ;;; Prog-mode
   `(font-lock-builtin-face ((,class (:foreground ,black))))
   `(font-lock-comment-face ((,class (:foreground ,lavender))))
   `(font-lock-doc-face ((,class (:foreground ,l700))))
   `(font-lock-function-name-face ((,class (:foreground ,l800))))
   `(font-lock-keyword-face ((,class (:foreground ,l700))))
   `(font-lock-string-face ((,class (:foreground ,l700))))
   `(font-lock-type-face ((,class (:foreground ,l800))))
   `(font-lock-variable-name-face ((,class (:foreground ,l700))))
   `(font-lock-constant-face ((,class (:foreground ,black))))
   `(font-lock-warning-face ((,class (:foreground ,black :background ,l300))))
   ;;; Highlights
   `(region ((,class (:background ,black :foreground ,white))))
   `(highlight ((,class (:foreground ,black :background ,l200))))
   `(hl-line ((,class (:background ,l200))))
   `(fringe ((,class (:background ,white))))
   `(cursor ((,class (:background ,black))))
   `(isearch ((,class (:bold t :foreground ,black :background ,l200))))
   ;;; Mode-line
   `(mode-line ((,class (:box (:line-width 1 :color nil) :foreground ,black :background ,l200))))
   `(mode-line-inactive ((,class (:box (:line-width 1 :color nil) :foreground ,l300 :background ,l50))))
   `(mode-line-buffer-if ((,class (:bold t))))
   `(minibuffer-prompt ((,class (:foreground ,l700))))
   ;;; Org-mode
   `(org-level-1 ((,class (:bold t :foreground ,black))))
   `(org-level-2 ((,class (:foreground ,black))))
   `(org-level-3 ((,class (:foreground ,l900))))
   `(org-level-4 ((,class (:foreground ,l800))))
   `(org-level-5 ((,class (:foreground ,l700))))
   `(org-level-6 ((,class (:foreground ,l700))))
   `(org-date ((,class (:foreground ,lavender))))
   `(org-block ((,class (:background ,l100))))
   `(org-block-begin-line ((,class (:foreground ,lavender :background ,l100))))
   `(org-block-end-line ((,class (:foreground ,lavender :background ,l100))))
   `(org-todo ((,class (:foreground ,l700))))
   `(org-done ((,class (:bold nil :foreground ,lavender))))
   `(org-meta-line ((,class (:foreground ,l300))))
   `(org-tag ((,class (:foreground ,l700))))
   `(org-drawer ((,class (:foreground ,lavender))))
   `(org-special-keyword ((,class (:foreground ,l700))))
   `(org-property-value ((,class (:foreground ,l700))))
   `(org-table ((,class (:foreground ,l700))))
   `(org-link ((,class (:foreground ,black))))
   ;;; Dired
   `(diredp-dir-heading ((,class (:background ,lavender :foreground ,black))))
   `(diredp-dir-name ((,class (:background ,l200 :foreground ,black))))
   `(diredp-file-name ((,class (:foreground ,black))))
   `(diredp-file-suffix ((,class (:foreground ,l700))))
   `(diredp-omit-file-name ((,class (:foreground ,l400))))
   `(diredp-symlink ((,class (:foreground ,l700))))))

(provide-theme 'lavandula-light)
