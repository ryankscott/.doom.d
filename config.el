;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Ryan Scott"
      user-mail-address "ryankennethscott@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
(setq doom-font (font-spec :family "Roboto Mono" :size 14 :weight 'normal)
      doom-big-font (font-spec :family "Roboto Mono" :size 16 :weight 'normal)
      doom-variable-pitch-font (font-spec :family "Roboto Mono" :size 14))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'rs-dark)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;

;; Add highlight-thing mode to all programming modes
(add-hook 'prog-mode-hook #'highlight-thing-mode)


;; Associate .tsx files with typescript
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-tsx-mode))
(setq typescript-indent-level 2)

;; Maximize on start
(add-to-list 'initial-frame-alist '(fullscreen . maximized))


;; Transpose window
(defun rs-window-split-transpose ()
  "Toggle between horizontal and vertical split with two windows."
  (interactive)
  (if (> (length (window-list)) 2)
      (error "Can't toggle with more than 2 windows!")
    (let ((func (if (window-full-height-p)
                    #'split-window-vertically
                  #'split-window-horizontally)))
      (delete-other-windows)
      (funcall func)
      (save-selected-window
        (other-window 1)
        (switch-to-buffer (other-buffer))))))

;; Custom keybindings
(map! :leader
      :desc "Flycheck errors"       "f l"    #'flycheck-list-errors
      :desc "Transpose windows"     "w z"    #'rs-window-split-transpose
      :desc "M-x" "SPC" #'execute-extended-command)

;; Show avatars in magit
(setq magit-revision-show-gravatars '("^Author:     " . "^Commit:     "))

;; Set auth source for forge
(setq auth-sources '("~/.authinfo"))

;; Use svelte mode
(add-to-list 'auto-mode-alist '("\\.svelte\\'" . svelte-mode))

;; Hide title in org mode
(setq org-hidden-keywords '(title begin_src end_src results))

(setq org-bullets-bullet-list '("\u200b"))
(setq org-indent-mode nil)
(setq org-indent-indentation-per-level 0)
(setq org-hide-emphasis-markers t)

;; Automatically continue lists in org mode
(add-hook 'org-mode-hook (lambda () (org-autolist-mode)))

;; Automatically apply theme based on system appearance
(defun rs/apply-theme (appearance)
  "Load theme, taking current system APPEARANCE into consideration."
  (mapc #'disable-theme custom-enabled-themes)
  (pcase appearance
    ('light (load-theme 'rs-light t))
    ('dark (load-theme 'rs-dark t))))

(add-hook 'ns-system-appearance-change-functions #'rs/apply-theme)

;; Format on save
(add-hook 'before-save-hook #'+format/buffer nil t)

;; Don't use LSP formatter for TSX
(setq-hook! 'typescript-tsx-mode-hook +format-with-lsp nil)

;; Don't show inline errors
(setq lsp-ui-sideline-show-diagnostics nil)

;; Add margins
(add-hook! '+popup-buffer-mode-hook
  (set-window-margins (selected-window) 1 1))

;; Magit - Protect against accidental pushes to upstream
(define-advice magit-push-current-to-upstream (:before (args) query-yes-or-no)
  "Prompt for confirmation before permitting a push to upstream."
  (when-let ((branch (magit-get-current-branch)))
    (unless (yes-or-no-p (format "Push %s branch upstream to %s? "
                                 branch
                                 (or (magit-get-upstream-branch branch)
                                     (magit-get "branch" branch "remote"))))
      (user-error "Push to upstream aborted by user"))))

;; Make indent guides invisible
(setq highlight-indent-guides-auto-character-face-perc 0)

;; Dash integration
(set-docsets! 'Typescript-TSX-mode "TypeScript" "React")
(setq +lookup-open-url-fn #'eww)

;; Fancy splash screen
(setq fancy-splash-image "/Users/ryan/.doom.d/images/emacs.svg")

;; Hack to maybe make JS modes faster
(advice-add #'add-node-modules-path :override #'ignore)

;; accept completion from copilot and fallback to company
(use-package! copilot
  :hook (prog-mode . copilot-mode)
  :bind (:map copilot-completion-map
              ("<tab>" . 'copilot-accept-completion)
              ("TAB" . 'copilot-accept-completion)
              ("C-TAB" . 'copilot-accept-completion-by-word)
              ("C-<tab>" . 'copilot-accept-completion-by-word)))


