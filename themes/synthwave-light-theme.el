;;; ~/.doom.d/themes/synthwave-light-theme.el -*- lexical-binding: t; -*-
(require 'doom-themes)

(defgroup synthwave-light-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(def-doom-theme synthwave-light
  "A dark theme inspired by Synthwave 84"
  ;; name        default   256       16
  ((bg         '("#ebebf4" nil       nil            ))
   (bg-alt     '("#ebebf4" nil       nil            ))
   (base0      '("#efefef" "#efefef" "white"        ))
   (base1      '("#e7e7e7" "#e7e7e7" "brightblack"  ))
   (base2      '("#dfdfdf" "#dfdfdf" "brightblack"  ))
   (base3      '("#c6c7c7" "#c6c7c7" "brightblack"  ))
   (base4      '("#8c8c84" "#9ca0a4" "brightblack"  ))
   (base5      '("#484a42" "#424242" "brightblack"  ))
   (base6      '("#434343" "#2e2e2e" "brightblack"  ))
   (base7      '("#2c2f34" "#1e1e1e" "brightblack"  ))
   (base8      '("#1b2229" "black"   "black"        ))
   (fg         '("#484a42" "#484a42" "white"        ))
   (fg-alt     '("#31312E" "#31312E" "white"  ))


   (grey       	'("#a0a1a7" "#a0a1a7" "brightblack"  ))
   (red        	'("#fc1f2c" "#fc1f2c" "red"          ))
   (orange              '("#f97e72" "#f97e72" "brightred"    ))
   (green      	'("#00af4f" "#00af4f" "green"        ))
   (teal       	'("#79bcf4" "#79bcf4" "brightgreen"  ))
   (yellow     	'("#FF8D01" "#FF8D01" "yellow"      ))
   (light-blue          '("#d2ecff" "#d2ecff" "brightblue"   ))
   (blue       	'("#008FD0" "#008FD0" "brightblue"   ))
   (dark-blue  	'("#2487D7" "#2487D7" "blue"         ))
   (magenta             '("#B949D0" "#B949D0" "blue"         ))
   (pink                '("#BE4594" "#BE4594" "magenta"      ))
   (violet              '("#EF259F" "#EF259F" "magenta"      ))
   (purple              '("#5452b1" "#5452b1" "brightmagenta"))
   (cyan       	'("#5AA6E7" "#5AA6E7" "brightcyan"   ))
   (dark-cyan  	'("#36B2BF" "#36B2BF" "cyan"         ))


   ;; face categories -- required for all themes
   (highlight      magenta)
   (vertical-bar   (doom-darken bg 0.1))
   (selection      (doom-darken bg 0.05))
   (builtin        pink)
   (comments       (doom-darken blue 0.2))
   (doc-comments   fg-alt)
   (constants      pink)
   (functions      magenta)
   (keywords       blue)
   (methods        pink)
   (operators      magenta)
   (type           green)
   (strings        fg-alt)
   (variables      magenta)
   (numbers        purple)
   (region         (doom-darken bg 0.05))
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    blue)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (modeline-bg (doom-darken bg 0.1))
   (modeline-bg-alt (doom-darken bg 0.1))
   (modeline-fg     fg)
   (modeline-fg-alt (doom-darken fg 0.1))
   )

  ;; --- base faces ------------------------
  ((highlight :background highlight)
   ((lazy-highlight &override) :background (doom-darken bg 0.05) :foreground fg :distant-foreground fg :weight 'semi-bold)
   (mode-line   :background modeline-bg :foreground modeline-fg)
   (mode-line-inactive :background modeline-bg-alt :foreground modeline-fg-alt)
   (mode-line-emphasis :foreground fg :weight 'semi-bold)
   (mode-line-highlight :weight 'bold :background (doom-lighten bg 0.1))

   (cursor :background magenta)


   ;; --- major-mode faces ------------------------
   ;; all-the-icons


   ;; swiper
   (swiper-line-face    :background (doom-lighten bg 0.1))
   (swiper-match-face-1  :background (doom-lighten bg 0.1))
   (swiper-match-face-2  :background (doom-lighten bg 0.1))
   (swiper-match-face-3  :background (doom-lighten bg 0.1))
   (swiper-match-face-4  :background (doom-lighten bg 0.1))
   (swiper-background-match-face-1  :foreground nil :background (doom-lighten bg 0.1))
   (swiper-background-match-face-2  :foreground nil :background (doom-lighten bg 0.1))
   (swiper-background-match-face-3  :background (doom-lighten bg 0.1))
   (swiper-background-match-face-4  :background (doom-lighten bg 0.1))

   ;; whitespace
   (whitespace-tab :foreground (doom-lighten bg 0.1) :background (doom-lighten bg 0.05))
   (whitespace-trailing :foreground (doom-lighten bg 0.1) :background (doom-lighten bg 0.05))
   (whitespace-line :foreground (doom-lighten bg 0.1) :background (doom-lighten bg 0.05))
   (whitespace-indentation :foreground (doom-lighten bg 0.1) :background (doom-lighten bg 0.05))
   (whitespace-empty :foreground (doom-lighten bg 0.1) :background (doom-lighten bg 0.05))

   ;; Query

   ;; doom-modeline
   (doom-modeline-bar :background (doom-darken bg 0.1))
   (doom-modeline-urgent)
   (doom-modeline-warning)
   (doom-modeline-info)
   (doom-modeline-debug)
   (doom-modeline-buffer-major-mode :weight 'semi-bold)
   (doom-modeline-buffer-minor-mode :weight 'semi-bold)
   (doom-modeline-panel :background bg :foreground fg)
   (doom-modeline-project-dir :foreground fg :weight 'normal)
   (doom-modeline-project-parent-dir :weight 'normal )
   (doom-modeline-buffer-project-root :weight 'normal )
   (doom-modeline-project-root :weight 'normal )
   (doom-modeline-persp-name)
   (doom-modeline-buffer-file)
   (doom-modeline-buffer-modified  :foreground (doom-lighten red 0.2)  :weight 'semi-bold)
   (doom-modeline-lsp-success  :weight 'semi-bold)
   (doom-modeline-buffer-path :weight 'normal)
   (doom-modeline-evil-insert-state :foreground cyan)
   (doom-modeline-evil-visual-state :foreground yellow)

   ;; evil
   (evil-replace-state :foreground red :background green)
   (evil-ex-lazy-highlight :background (doom-lighten bg 0.15) :weight 'semi-bold)
   (evil-ex-substitute-matches :weight 'semi-bold :foreground (doom-lighten red 0.2) :strike-through t )
   (evil-ex-substitute-replacement :weight 'semi-bold :foreground (doom-lighten green 0.2))


   ;; org-mode
   (org-warning :weight 'normal :foreground red)
   (org-agenda-date :weight 'normal :foreground fg :height 1.3 :background nil)
   (org-agenda-date-today :weight 'semi-bold :foreground fg :height 1.3)
   (org-agenda-date-weekend :weight 'normal :foreground green :height 1.15 :background nil)
   (org-super-agenda-header  :weight 'normal :foreground cyan :height 1.0 :background nil)
   (org-default :height 0.7 :foreground fg :family "Avenir")
   (org-document-title :weight 'bold :height 1.6 :foreground fg :family "Avenir")
   (org-level-1 :height 1.4 :foreground fg :family "Avenir")
   (org-level-2 :height 1.3 :foreground fg :family "Avenir")
   (org-level-3 :height 1.2 :foreground fg :family "Avenir")
   (org-level-4 :height 1.1 :foreground fg :family "Avenir")
   (org-level-5 :height 1.0 :foreground fg :family "Avenir")
   (org-level-6 :height 1.0 :foreground fg :family "Avenir")
   (org-level-7 :height 0.8 :foreground fg :family "Avenir")
   (org-level-8 :height 0.8 :foreground fg :family "Avenir")
   (org-list :height 0.8 :foreground fg :family "Avenir")
   (org-bullets :height 0.8 :foreground fg :family "Avenir")
   (org-list-dt :height 1.0 :foreground "#45b9ef" :family "Avenir")
   (org-num-default-format :height 1.0 :foreground "#45b9ef" :family "Avenir")
   (org-indent :height 0.8 :foreground red :family "Avenir")
   (org-block :height 0.8 :foreground "#000000" :family "Avenir" )
   (org-table :height 0.8 :foreground "#000000" :family "Fira Code" )
   (org-block-begin-line :height 0.8 :foreground fg :family "Avenir")
   (org-block-end-line :height 0.8 :foreground fg :family "Avenir")
   (org-quote :height 0.9 :background nil :foreground nil :family "Avenir Italic" :slant 'italic)
   (org-link :height 0.9 :background nil :foreground "#111111" :family "Avenir" :underline t)

   ;; tooltip
   (tooltip :background (doom-darken bg 0.075) :foreground fg)

   ;; --- plugin faces -------------------
   ;; company
   (company-tooltip            :inherit 'tooltip :background (doom-darken bg 0.075))
   (company-tooltip-selection  :background nil :foreground nil :weight 'semi-bold)
   (company-tooltip-common     :foreground cyan :distant-foreground cyan :weight 'semi-bold)
   (company-tooltip-search     :background highlight :foreground base1 :weight 'ultra-bold)
   (company-tooltip-search-selection :background highlight :foreground base1 :weight 'ultra-bold)
   (company-tooltip-mouse      :background base6 :foreground bg :distant-foreground fg)
   (company-preview-common :inherit 'tooltip :background (doom-darken bg 0.075))
   (company-scrollbar-bg :background (doom-darken bg 0.1))
   (company-scrollbar-fg :background (doom-darken bg 0.2))

   ;; pop up
   (popup-tip-face :inherit 'tooltip :background (doom-darken bg 0.055))


   ;; hl
   (hl-line :foreground nil :background (doom-darken bg 0.05))
   (highlight-thing :foreground nil :background nil :weight 'semi-bold)
   (highlight-symbol-face :background (doom-darken bg 0.1) :distant-foreground fg-alt)
   (highlight-indent-guides-character-face :foreground fg)
   (highlight-indent-guides-even-face :background (doom-darken fg-alt 0.1))
   (highlight-indent-guides-odd-face :background (doom-darken fg-alt 0.1))
   (highlight-indent-guides-top-even-face :background (doom-darken fg-alt 0.1))
   (highlight-indent-guides-top-odd-face :background (doom-darken fg-alt 0.1))

   ;; ediff
   (ediff-fine-diff-A    :background base3 :weight 'semi-bold)
   (ediff-current-diff-A :inherit 'hl-line)
   (ediff-even-diff-A    :background base3)

   ;; dired-k
   (dired-k-commited :foreground base4)
   (dired-k-modified :foreground vc-modified)
   (dired-k-ignored :foreground cyan)
   (dired-k-added    :foreground vc-added)

   ;; ivy
   (counsel-active-mode)
   (ivy-minibuffer-match-face-2  :weight 'extra-bold)

   ;; js2-mode
   (js2-jsdoc-tag              :foreground magenta)
   (js2-object-property        :foreground dark-cyan)
   (js2-object-property-access :foreground dark-cyan)
   (js2-function-param         :foreground purple)
   (js2-jsdoc-type             :foreground base8)
   (js2-jsdoc-value            :foreground dark-cyan)

   ;; lsp-mode
   (lsp-lens-face :foreground base7 :height 0.8)

   ;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :background nil :weight 'semi-bold)
   (rainbow-delimiters-depth-2-face :weight 'semi-bold)
   (rainbow-delimiters-depth-3-face :weight 'semi-bold)
   (rainbow-delimiters-depth-4-face :weight 'semi-bold)
   (rainbow-delimiters-depth-5-face :weight 'semi-bold)
   (rainbow-delimiters-depth-6-face :weight 'semi-bold)
   (rainbow-delimiters-depth-7-face :weight 'semi-bold)
   (rainbow-delimiters-depth-8-face :weight 'semi-bold)
   (rainbow-delimiters-depth-9-face :weight 'semi-bold)

   ;; line number
   (line-number :foreground bg)
   (line-number-current-line :foreground fg)

   ;; treemacs
   (treemacs-root-face :foreground fg :weight 'semi-bold :height 1.2)
   (doom-themes-treemacs-root-face :foreground fg :weight 'semi-bold :height 1.2)
   (doom-themes-treemacs-file-face :foreground fg)
   (treemacs-directory-face :foreground fg)
   (treemacs-git-modified-face :foreground blue)

   ;; magit
   (magit-filename :foreground cyan)
   (magit-blame-heading :foreground magenta :background bg-alt)
   (magit-heading :foreground magenta :background bg-alt)
   (magit-diff-removed :foreground (doom-darken red 0.1) :background (doom-blend red bg 0.01))
   (magit-diff-added :foreground (doom-darken green 0.1) :background (doom-blend green bg 0.01))
   (magit-diff-removed-highlight :foreground red )
   (magit-diff-context-highlight :weight 'semi-bold)
   (magit-diff-added-highlight :foreground green :weight 'semi-bold)
   (magit-diff-hunk-heading :foreground magenta)
   (magit-diff-hunk-heading-highlight :foreground magenta :weight 'semi-bold)
   (magit-section-highlight :background (doom-lighten bg 0.1) :weight 'semi-bold)
   (diff-refine-added :weight: 'semi-bold)
   (diff-refine-changed :weight: 'semi-bold)
   (diff-refine-removed :weight: 'semi-bold)

   ;; Nav-flash
   (nav-flash-face :background (doom-darken bg 0.1) :weight 'bold)))


;;; synthwave-light-theme.el ends here
