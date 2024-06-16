;;; rs-light-theme.el
(require 'doom-themes)

(defgroup rs-light-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(def-doom-theme rs-light
  "A light theme inspired by Bluloco"

  ;; name        default   256       16
  ((bg         '("#f4f4f4" nil       nil            ))
   (bg-alt     '("#fafafa" nil       nil            ))
   (base0      '("#efefef" "#efefef" "white"        ))
   (base1      '("#e7e7e7" "#e7e7e7" "brightblack"  ))
   (base2      '("#dfdfdf" "#dfdfdf" "brightblack"  ))
   (base3      '("#c6c7c7" "#c6c7c7" "brightblack"  ))
   (base4      '("#8c8c84" "#9ca0a4" "brightblack"  ))
   (base5      '("#484a42" "#424242" "brightblack"  ))
   (base6      '("#434343" "#2e2e2e" "brightblack"  ))
   (base7      '("#2c2f34" "#1e1e1e" "brightblack"  ))
   (base8      '("#1b2229" "black"   "black"        ))
   (fg         '("#383a42" "#424242" "black"        ))
   (fg-alt     '("#c6c7c7" "#c7c7c7" "brightblack"  ))

   (grey       '("#a0a1a7" "#a0a1a7" "brightblack"  ))
   (red        '("#e45649" "#e45649" "red"          ))
   (orange     '("#da8548" "#dd8844" "brightred"    ))
   (green      '("#50a14f" "#50a14f" "green"        ))
   (teal       '("#4db5bd" "#44b9b1" "brightgreen"  ))
   (yellow     '("#bda800" "#c5a332" "yellow"       ))
   (baby-blue  '("#d2ecff" "#d2ecff" "brightblue"   ))
   (blue       '("#0098dd" "#0098dd" "brightblue"   ))
   (dark-blue  '("#278fe4" "#278fe4" "blue"         ))
   (magenta    '("#ae1e77" "#ae1e77" "magenta"      ))
   (violet     '("#9864c4" "#9864c4" "brightmagenta"))
   (cyan       '("#0184bc" "#0184bc" "brightcyan"   ))
   (dark-cyan  '("#005478" "#005478" "cyan"         ))

   (highlight      blue)
   (vertical-bar   base2)
   (selection      baby-blue)
   (builtin        magenta)
   (comments       base4)
   (doc-comments   (doom-lighten comments 0.15))
   (constants      violet)
   (functions      dark-cyan)
   (keywords       blue)
   (methods        cyan)
   (operators      blue)
   (type           yellow)
   (strings        green)
   (variables      magenta)
   (numbers        magenta)
   (region         baby-blue)
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   (modeline-fg     nil)
   (modeline-fg-alt (doom-blend violet base4 0.2))

   (modeline-bg base1)
   (modeline-bg-l base2)
   (modeline-bg-inactive (doom-darken bg 0.1))
   (modeline-bg-inactive-l `(,(doom-darken (car bg-alt) 0.05) ,@(cdr base1))))

  ((font-lock-comment-face
    :foreground comments
    :weight 'bold)
   (font-lock-doc-face
    :inherit 'font-lock-comment-face
    :foreground doc-comments
    :weight 'regular)

   ((line-number &override) :foreground (doom-lighten fg 0.7) :italic nil)
   ((line-number-current-line &override) :foreground (doom-lighten fg 0.1) :italic nil)

   (doom-modeline-bar :background highlight)
   (doom-modeline-project-dir :foreground violet :weight 'bold)
   (doom-modeline-buffer-file :weight 'regular)
   (doom-modeline-highlight :background modeline-bg :weight 'semi-bold)

   (mode-line :background modeline-bg :foreground modeline-fg)
   (mode-line-inactive :background modeline-bg-inactive :foreground modeline-fg-alt)
   (mode-line-emphasis :foreground highlight)
   (mode-line-highlight :background modeline-bg :weight 'semi-bold)

   (magit-blame-heading :foreground orange :background bg-alt)

   (magit-diff-hunk-heading :foreground (doom-darken violet 0.2) :background (doom-blend violet bg 0.1))
   (magit-diff-hunk-heading-highlight :foreground (doom-darken violet 0.6) :background (doom-blend violet bg 0.3))

   (magit-diff-removed :foreground (doom-darken red 0.2) :background (doom-blend red bg 0.1))
   (magit-diff-removed-highlight :foreground (doom-darken red 0.4) :background (doom-blend red bg 0.2))

   (diff-refine-removed :foreground (doom-darken red 0.2) :background (doom-blend red bg 0.4))
   (diff-refine-added :foreground (doom-darken green 0.2) :background (doom-blend green bg 0.4))

   (evil-ex-lazy-highlight :background (doom-darken bg 0.2))

   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)

   (markdown-markup-face     :foreground base5)
   (markdown-header-face     :inherit 'bold :foreground red)
   (markdown-code-face       :background base1)
   (mmm-default-submode-face :background base1)

   (org-block            :background base0)
   (org-level-1          :foreground base8 :weight 'bold :height 1.25)
   (org-level-2          :foreground base6 :weight 'bold :height 1.1)
   (org-level-3          :foreground base5 :bold bold :height 1.0)
   (org-level-4          :foreground base4 :bold bold :height 1.0)
   (org-ellipsis         :underline nil :background bg-alt     :foreground grey)
   (org-quote            :background base1)
   (org-checkbox-statistics-done :foreground base2 :weight 'normal)
   (org-done nil)
   (org-done :foreground green :weight 'normal)
   (org-headline-done :foreground base3 :weight 'normal :strike-through t)
   (org-date :foreground orange)
   (org-code :foreground dark-blue)
   (org-special-keyword :foreground base8 :underline t)
   (org-document-title :foreground base8 :weight 'bold :height 1.5)
   (org-block-begin-line :foreground base4 :height 0.65)
   (org-meta-line :foreground base4 :height 0.65)
   (org-list-dt :foreground magenta)



   (wgrep-face :background base1)

   (ediff-current-diff-A        :foreground red   :background (doom-lighten red 0.8))
   (ediff-current-diff-B        :foreground green :background (doom-lighten green 0.8))
   (ediff-current-diff-C        :foreground blue  :background (doom-lighten blue 0.8))

   (tooltip :background base1 :foreground fg)

   (ivy-posframe :background base0)

   ;; lsp
   (lsp-headerline-breadcrumb-path-face :foreground base6 :background (doom-darken bg 0.05))
   (lsp-headerline-breadcrumb-path-hint-face :foreground base6 :background nil)
   (lsp-headerline-breadcrumb-symbols-face :foreground blue :background nil)
   (lsp-ui-doc-background    :background (doom-darken bg 0.07))
   (lsp-face-highlight-read  :background nil :foreground: nil)
   (lsp-face-highlight-write :background nil :foreground: nil)
   (lsp-face-highlight-textual :foreground nil :background (doom-blend fg bg 0.1) :weight 'semi-bold)


   (popup-tip-face :foreground fg :background (doom-darken bg 0.05))

   ;; hl
   (hl-line :foreground nil :background nil)
   (highlight :foreground nil :background (doom-darken bg 0.05) :weight 'semi-bold)
   (highlight-thing :foreground nil :background nil :weight 'semi-bold)
   (highlight-symbol-face :background (doom-lighten bg 0.1) :distant-foreground fg-alt)

   ;; diff-hl
   (diff-hl-change :background (doom-blend blue bg 0.2))
   (diff-hl-insert :background (doom-blend green bg 0.2))
   (diff-hl-delete :background (doom-blend red bg 0.2))


   ;; swiper
   (swiper-line-face :background (doom-blend blue bg 0.2) :foreground nil :weight 'semibold)
   (swiper-match-face-2 :background (doom-blend blue bg 0.2) :foreground blue :weight 'semibold)
   (swiper-match-face-3 :background (doom-blend blue bg 0.2) :foreground blue :weight 'semibold)
   (swiper-match-face-4 :background (doom-blend blue bg 0.2) :foreground blue :weight 'semibold)


   ;; org-mode
   (org-warning :weight 'normal :foreground red)
   (org-agenda-date :weight 'normal :foreground fg :height 1.3 :background nil)
   (org-agenda-date-today :weight 'semi-bold :foreground fg :height 1.3)
   (org-agenda-date-weekend :weight 'normal :foreground green :height 1.15 :background nil)
   (org-super-agenda-header  :weight 'normal :foreground cyan :height 1.0 :background nil)
   (org-default :height 0.7 :foreground fg )
   (org-document-title :weight 'bold :height 1.6 :foreground fg )

   (org-level-1 :height 1.4 :foreground fg )
   (org-level-2 :height 1.3 :foreground fg )
   (org-level-3 :height 1.2 :foreground fg )
   (org-level-4 :height 1.1 :foreground fg )
   (org-level-5 :height 1.0 :foreground fg )
   (org-level-6 :height 1.0 :foreground fg )
   (org-level-7 :height 0.8 :foreground fg )
   (org-level-8 :height 0.8 :foreground fg )
   (org-list :height 0.8 :foreground fg )
   (org-todo :height 1.0 :foreground fg)
   (org-bullets :height 0.8 :foreground fg )
   (org-list-dt :height 1.0 :foreground "#45b9ef" )
   (org-num-default-format :height 1.0 :foreground "#45b9ef" )
   (org-table :height 0.9 :foreground fg)
   (org-block-begin-line :height 1.0 :foreground fg :box '(:line-width 2 :color "foreground" :style flat))
   (org-block-end-line :height 1.0 :foreground fg :box '(:line-width 2 :color "foreground" :style flat))
   (org-code :extend t :height 1.0 :foreground fg :background base0 :box '(:line-width 2 :color "base0" :style flat))
   (org-block :height 1.0 :foreground fg :background base0)
   (org-meta-line :height 1.0 :foreground fg)
   (org-quote :height 0.9 :background nil :foreground nil :slant 'italic)
   (org-link :height 0.9 :background nil :foreground "#111111"  :underline t)


   )

  )

;;; rs-light-theme.el ends here
