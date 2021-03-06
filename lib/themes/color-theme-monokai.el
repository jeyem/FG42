;;; color-theme-monokai.el --- TextMate theme Monokai port for Emacs color-theme.
;;
;; Copyright (C) 2010 Operator <rectifier04@gmail.com>
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3 of
;; the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be
;; useful, but WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
;; PURPOSE.  See the GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public
;; License along with this program; if not, write to the Free
;; Software Foundation, Inc., 59 Temple Place, Suite 330, Boston,
;; MA 02111-1307 USA

;; Edited by lsameer <lxsameer@gnu.org>

(require 'color)

(defun themes/color-theme-monokai ()
  "Monokai color theme for Emacs by Operator.

Based on the TextMate theme Monokai"
  (interactive)

  (color-theme-install
   '(themes/color-theme-monokai
     ((foreground-color . "#F8F8F2")
      (background-color . "#272822")
      (background-mode . dark)
      (cursor-color . "#73d216") ; medium chameleon
      (mouse-color . "#73d216"))

     ;;; Standard font lock faces
     (default ((t (nil))))
     (font-lock-comment-face ((t (:foreground "#75715E")))) ; dark aluminum
     (font-lock-comment-delimiter-face ((t (:foreground "#75715E")))) ; dark aluminum
     (font-lock-doc-face ((t (:foreground "#6c71c4")))) ; plum
     (font-lock-doc-string-face ((t (:foreground "#75715E")))) ; plum
     (font-lock-string-face ((t (:foreground "#E6DB74")))) ; plum
     (font-lock-keyword-face ((t (:foreground "#F92672")))) ; light sky blue
     (font-lock-builtin-face ((t (:foreground "#855c1b")))) ; med-dark chocolate
     (font-lock-function-name-face ((t (:foreground "#A6E22E")))) ; dark butter
     (font-lock-variable-name-face ((t (:foreground "#FD971F"))))
     (font-lock-preprocessor-face ((t (:foreground "#66D9EF")))) ; aluminum
     (font-lock-constant-face ((t (:foreground "#4e9a06")))) ; dark chameleon
     (font-lock-type-face ((t (:foreground "#66D9EF")))) ; light plum
     (enh-ruby-op-face ((t (:foreground "#dfdfda" :background nil))))

     (font-lock-warning-face ((t (:bold t :foreground "#cc0000")))) ; scarlet red
     (hl-line ((t (:background "#393b2f"))))

     ;; Search
     (isearch ((t (:foreground "#080808" :background "#edd400"))))
     (isearch-lazy-highlight-face ((t (:foreground "#080808" :background "#75715E"))))

     ;; Emacs Interface
     (fringe ((t (:background "#272822"))))
     (linum ((t (:background "#303030"))))
     (border ((t (:background "#272822"))))
     (mode-line ((t (:background "#393b2f" :foreground "#eeeeec"))))
     (mode-line-buffer-id ((t (:background "#393b2f" :foreground "#eeeeec"))))
     (mode-line-inactive ((t (:background "#393b2f" :foreground "#888a85"))))
     (minibuffer-prompt ((t (:foreground "#729fcf")))) ; light sky blue
     (region ((t (:background "#49483E"))))

     ;(flycheck-error ((t (:underline (:color  "#0000ff" :style :wave)))))
     ;; Parenthesis matching
     ;;(show-paren-match-face ((t (:foreground "#2e3436" :background "#3E3D32"))))
     (show-paren-match-face ((t (:foreground "#E6DB74" :background "#3E3D32"))))
     (show-paren-mismatch-face ((t (:foreground "#2e3436" :background "#ef2929"))))

     (indent-guide-face ((t (:foreground "#bbb"))))

     ;; Calendar
     (holiday-face ((t (:foreground "#cc0000")))) ; dark scarlet red

     ;; Info
     (info-xref ((t (:foreground "#729fcf")))) ; light sky blue
     (info-xref-visited ((t (:foreground "#ad7fa8")))) ; light plum

     ;;; AUCTeX
     (font-latex-sectioning-5-face ((t (:foreground "#c4a000" :bold t)))) ; dark butter
     (font-latex-bold-face ((t (:foreground "#4e9a06" :bold t)))) ; dark chameleon
     (font-latex-italic-face ((t (:foreground "#4e9a06" :italic t)))) ; dark chameleon
     (font-latex-math-face ((t (:foreground "#855c1b")))) ; med-dark chocolate
     (font-latex-string-face ((t (:foreground "#77507b")))) ; plum
     (font-latex-warning-face ((t (:foreground "#cc0000")))) ; dark scarlet red
     (font-latex-slide-title-face ((t (:foreground "#c4a000")))) ; dark butter
     ))

  (let ((bg (face-attribute 'default :background)))
    (custom-set-faces
     `(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg 5)))))
     `(company-scrollbar-bg ((t (:background ,(color-lighten-name bg 10)))))
     `(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 5)))))
     `(company-tooltip-selection ((t (:inherit font-lock-function-name-face :background ,(color-lighten-name bg 10)))))
     `(company-tooltip-common ((t (:inherit font-lock-constant-face)))))))





(set-face-attribute 'fringe nil :background "#272822")

(provide 'themes/color-theme-monokai)
