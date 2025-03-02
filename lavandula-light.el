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
      (bg-dim "#f3f1f7")
      (bg-dark "#c7c8d6")
      ;; Foregrounds
      (fg "#030008")
      (fg-dim "#585979")
      ;; Colours
      (lavender "#a2a3bb")
      (lavender-intense "#5a00eb"))

  (custom-theme-set-faces
   'lavandula-light
   ;;; BASE
   `(default ((,class (:background ,bg :foreground ,fg))))
   `(bold ((,class (:weight semi-bold))))
   ;;; FONT-LOCK
   `(font-lock-builtin-face ((,class (:inherit default))))
   `(font-lock-function-name-face ((,class (:inherit default))))
   `(font-lock-keyword-face ((,class (:inherit default))))
   `(font-lock-backet-face ((,class (:inherit default))))
   `(font-lock-comment-face ((,class (:foreground ,lavender))))
   `(font-lock-comment-delimiter-face ((,class (:inherit font-lock-comment-face))))
   `(font-lock-constant-face ((,class (:inherit default))))
   `(font-lock-doc-face ((,class (:foreground ,fg-dim))))
   `(font-lock-doc-markup-face ((,class (:inherit default))))
   `(font-lock-escape-face ((,class (:inherit default))))
   `(font-lock-function-call-face ((,class (:inherit default))))
   `(font-lock-misc-punctuation-face ((,class (:inherit default))))
   `(font-lock-negation-char-face ((,class (:inherit default))))
   `(font-lock-number-face ((,class (:inherit default))))
   `(font-lock-operator-face ((,class (:inherit default))))
   `(font-lock-preprocessor-face ((,class (:inherit default))))
   `(font-lock-property-name-face ((,class (:inherit default))))
   `(font-lock-property-use-face ((,class (:inherit default))))
   `(font-lock-punctuation-face ((,class (:inherit default))))
   `(font-lock-regexp-face ((,class (:inherit default))))
   `(font-lock-regexp-grouping-backslash ((,class (:inherit default))))
   `(font-lock-regexp-grouping-construct ((,class (:inherit default))))
   `(font-lock-string-face ((,class (:foreground ,fg-dim :weight light))))
   `(font-lock-type-face ((,class (:inherit default))))
   `(font-lock-variable-name-face ((,class (:inherit default))))
   `(font-lock-variable-use-face ((,class (:inherit default))))
   `(font-lock-warning-face ((,class (:bold t :foreground ,lavender-intense))))
   ;;; HIGHLIGHTS
   `(region ((,class (:background ,bg-dark :foreground ,fg))))
   `(highlight ((,class (:background ,bg-dim :foreground ,fg))))
   `(hl-line ((,class (:background ,bg-dim))))
   `(fringe ((,class (:background ,bg))))
   `(cursor ((,class (:background ,lavender :foreground ,fg))))
   `(isearch ((,class (:bold t :background ,bg-dark))))
   `(isearch-fail ((,class (:background ,bg-dim))))
   `(lazy-highlight ((,class (:background ,bg-dim))))
   `(show-paren-match ((,class (:bold t :background ,bg-dim))))
   `(show-paren-match-expression ((,class (:inherit show-paren-match))))
   `(show-paren-match-mismatch ((,class (:background ,bg-dark))))
   `(line-number ((,class (:foreground ,fg))))
   `(line-number-current-line ((,class (:inherit line-number :bold t))))
   `(orderless-match-face-0 ((,class (:bold t :foreground ,fg))))
   `(orderless-match-face-1 ((,class (:inherit orderless-match-face-0))))
   `(orderless-match-face-2 ((,class (:inherit orderless-match-face-0))))
   `(orderless-match-face-3 ((,class (:inherit orderless-match-face-0))))
   `(icomplete-first-match ((,class (:inherit orderless-match-face-0))))
   `(icomplete-section ((,class (:foreground ,lavender))))
   `(icomplete-selected-match ((,class (:background ,bg-dark :foreground ,fg))))
   ;;; MODE-LINE & MINIBUFFER
   `(mode-line ((,class (:box (:line-width 1 :color ,lavender) :foreground ,fg :background ,lavender))))
   `(mode-line-inactive ((,class (:box (:line-width 1 :color ,bg-dim) :foreground ,lavender :background ,bg-dim))))
   `(mode-line-buffer-if ((,class (:inherit mode-line :bold t))))
   ;;; ORG-MODE & AGENDA
   `(org-agenda-date ((,class (:inherit default))))
   `(org-agenda-structure ((,class (:inherit default :underline t))))
   `(org-agenda-date-weekend ((,class (:foreground ,fg-dim))))
   `(org-agenda-date-weekend-today ((,class (:inherit org-agenda-date-weekend :bold t))))
   `(org-agenda-date-today ((,class (:inherit org-agenda-date :bold t))))
   `(org-agenda-done ((,class (:inherit default :strike-through t))))
   `(org-scheduled-today ((,class (:inherit default :underline t (:style dotted)))))
   `(org-scheduled-previously ((,class (:inherit default :underline t (:style line)))))
   `(org-archived ((,class (:foreground ,lavender :strike-through t))))
   `(org-block ((,class (:background ,bg-dim))))
   `(org-block-begin-line ((,class (:background ,bg-dim :foreground ,fg-dim))))
   `(org-block-end-line ((,class (:inherit org-block-begin-line))))
   `(org-code ((,class (:foreground ,lavender-intense))))
   `(org-date ((,class (:foreground ,fg-dim))))
   `(org-date-selected ((,class (:foreground fg :background ,bg-dim))))
   `(org-done ((,class (:foreground ,lavender :background ,bg-dim))))
   `(org-drawer ((,class (:foreground ,fg-dim))))
   `(org-ellipsis ((,class (:inherit default))))
   `(org-imminent-deadline ((,class (:foreground ,lavender-intense :underline t (:style double)))))
   `(org-headline-done ((,class (:inherit org-done))))
   `(org-headline-todo ((,class (:foreground ,fg :underline t))))
   `(org-level-1 ((,class (:bold t :foreground ,lavender-intense :background ,bg-dim))))
   `(org-level-2 ((,class (:bold t :foreground ,fg :background ,bg-dim))))
   `(org-level-3 ((,class (:foreground ,fg :background ,bg-dim))))
   `(org-level-4 ((,class (:inherit default))))
   `(org-level-5 ((,class (:inherit default))))
   `(org-level-6 ((,class (:inherit default))))
   `(org-level-7 ((,class (:inherit default))))
   `(org-level-8 ((,class (:inherit default))))
   `(org-link ((,class (:foreground ,fg :underline t))))
   `(org-meta-line ((,class (:foreground ,fg-dim))))
   `(org-tag ((,class (:foreground ,lavender :background ,bg-dim))))
   `(org-upcoming-deadline ((,class (:foreground ,fg :underline t (:style double) :background ,bg-dim))))
   `(org-upcoming-distant-deadline ((,class (:foreground ,fg :background ,bg-dim))))
   ;;; DIRED
   `(diredp-file-name ((,class (:inherit default))))
   `(diredp-file-suffix ((,class (:foreground ,lavender))))
   `(diredp-compressed-file-name ((,class (:foreground ,fg-dim))))
   `(diredp-compressed-file-suffix ((,class (:inherit diredp-file-suffix))))
   `(diredp-date-time ((,class (:foreground ,fg-dim))))
   `(diredp-flag-mark ((,class (:background ,bg-dark))))
   `(diredp-flag-mark-line ((,class (:background ,bg-dim))))
   `(diredp-deletion ((,class (:inherit diredp-flag-mark :strike-through t))))
   `(diredp-deletion-file-name ((,class (:inherit diredp-flag-mark-line :strike-through t))))
   `(diredp-omit-file-name ((,class (:foreground ,bg-dark))))
   `(diredp-symlink ((,class (:foreground ,fg :underline t))))
   `(diredp-dir-heading ((,class (:bold t :background ,bg-dark))))
   `(diredp-dir-name ((,class (:background ,bg-dim))))
   ;;; ERRORS & WARNING
   `(error ((,class (:underline t (:style double) :bold t :foreground ,fg))))
   `(warning ((,class (:underline t :foreground ,fg))))
   `(flyspell-dublicate ((,class (:underline (:style wave :color ,fg-dim)))))
   `(flyspell-incorrect ((,class (:underline (:style wave)))))
   ;;; GEISER
   `(geiser-font-lock-autodoc-current-arg ((,class (:bold t :foreground ,lavender-intense))))
   `(geiser-font-lock-autodoc-identifier ((,class (:bold t :foreground ,fg))))
   `(geiser-font-lock-doc-button ((,class (:underline t :foreground ,fg))))
   `(geiser-font-lock-doc-link ((,class (:inherit geiser-font-lock-doc-button))))
   `(geiser-font-lock-doc-title ((,class (:bold t))))
   `(geiser-font-lock-error-link ((,class (:underline t (:style double) :bold t))))
   `(geiser-font-lock-image-button ((,class (:inherit geiser-font-lock-doc-button))))
   `(geiser-font-lock-repl-input ((,class (:foreground ,fg-dim))))
   `(geiser-font-lock-repl-output ((,class (:inherit default))))
   `(geiser-font-lock-repl-prompt ((,class (:foreground ,lavender))))
   ;;; SHR & EWW
   `(shr-abbreviation ((,class (:underline t (:style wave :color ,fg-dim) :foreground ,fg-dim))))
   `(shr-code ((,class (:background ,bg-dim))))
   `(shr-h1 ((,class (:inherit org-level-1))))
   `(shr-h2 ((,class (:inherit org-level-2))))
   `(shr-h3 ((,class (:inherit org-level-3))))
   `(shr-h4 ((,class (:inherit org-level-4))))
   `(shr-h5 ((,class (:inherit org-level-5))))
   `(shr-h6 ((,class (:inherit org-level-6))))
   `(shr-link ((,class (:bold t :underline t))))
   `(shr-mark ((,class (:inherit region))))
   `(shr-selected-link ((,class (:inherit shr-link :bg-dark))))
   `(shr-strike-through ((,class (:strike-through t))))))

;;;autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'lavandula-light)
      
