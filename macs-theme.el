;;; macs-theme.el --- [ma]thias [c]olor [s]cheme -*- lexical-binding: t; no-byte-compile: t; -*-
;;; Commentary:
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup macs-theme nil
  "Options for the `macs' theme."
  :group 'doom-themes)

(defcustom macs-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'macs-theme
  :type 'boolean)

(defcustom macs-no-highlight-variables nil
  "If non-nil, removes highlight on variable names"
  :group 'macs-theme
  :type 'boolean)

(defcustom doom-macs-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
determine the exact padding."
  :group 'macs-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme macs
    "A minimal light syntax theme"

  ;; name        default   256       16
  (
   ;; (macs-base1           '("#605a52" "#666666" "black"))
   (macs-base1           '("#000000" "#666666" "black"))
   (macs-base2           '("#93836c" "#999966" "brightblack"))
   (macs-base3           '("#b9a992" "#cc9999" "brightblack"))
   (macs-base4           '("#dcd3c6" "#cccccc" "brightblack"))
   (macs-base5           '("#e4ddd2" "#cccccc" "brightblack"))
   (macs-base6           '("#f1ece4" "#ffffcc" "brightblack"))
   ;; (macs-base7           '("#f7f3ee" "#ffffff" "brightblack"))
   (macs-base7           '("#ffffff" "#ffffff" "brightblack"))

   (macs-accent          '("#6a4dff" "#6666ff" "brightblue"))

   (macs-orange-text     '("#5b5143" "#666633" "brightblack"))
   (macs-orange-text-sec '("#957f5f" "#996666" "brightblack"))
   (macs-orange          '("#f08c00" "#ff9900" "orange"))
   (macs-orange-blend    '("#f7e0c3" "#ffcccc" "brightorange"))

   (macs-red-text        '("#5b4343" "#663333" "brightblack"))
   (macs-red-text-sec    '("#955f5f" "#996666" "brightblack"))
   (macs-red             '("#f00000" "#ff0000" "red"))
   (macs-red-blend       '("#f6cfcb" "#ffcccc" "brightred"))

   ;; (macs-green-text      '("#525643" "#666633" "brightblack"))
   (macs-green-text      '("#345f00" "#666633" "brightblack"))
   (macs-green-text-sec  '("#81895d" "#999966" "brightblack"))
   (macs-green           '("#84bd00" "#99cc00" "green"))
   ;; (macs-green-blend     '("#e2e9c1" "#ccffcc" "brightgreen"))
   (macs-green-blend     '("#e9fad3" "#ccffcc" "brightgreen"))

   (macs-teal-text       '("#465953" "#336666" "brightblack"))
   (macs-teal-text-sec   '("#5f8c7d" "#669966" "brightblack"))
   (macs-teal            '("#00bda4" "#00cc99" "cyan"))
   (macs-teal-blend      '("#d2ebe3" "#ccffcc" "brightcyan"))

   ;; (macs-blue-text       '("#4c5361" "#336666" "brightblack"))
   (macs-blue-text       '("#025e80" "#336666" "brightblack"))
   (macs-blue-text-sec   '("#7382a0" "#669999" "brightblack"))
   (macs-blue            '("#75a3ff" "#6699ff" "blue"))
   ;; (macs-blue-blend      '("#dde4f2" "#ccccff" "brightblue"))
   (macs-blue-blend      '("#d6f2fd" "#ccccff" "brightblue"))

   ;; (macs-purple-text     '("#614c61" "#663366" "brightblack"))
   (macs-purple-text     '("#7d02d1" "#663366" "brightblack"))
   (macs-purple-text-sec '("#9c739c" "#996699" "brightblack"))
   (macs-purple          '("#ce5cff" "#cc66ff" "purple"))
   ;; (macs-purple-blend    '("#f1ddf1" "#ffccff" "brightpurple"))
   (macs-purple-blend    '("#efe0fa" "#ffccff" "brightpurple"))

   (macs-grey-text       '("#a0a0a0" "#666666" "black"))
   (macs-yellow-text     '("#6c6400" "#666633" "brightblack"))
   (macs-yellow-blend    '("#fffab4" "#ffcccc" "brightorange"))

   (bg         `(,(car macs-base7) nil       nil            ))
   (bg-alt     `(,(car macs-base6) nil       nil            ))
   (base0      macs-base6)
   (base1      macs-base5 )
   (base2      macs-base4 )
   (base3      macs-base3 )
   (base4      macs-base2 )
   (base5      macs-base1 )
   (base6      '("#202328"       nil "brightblack"  ))
   (base7      '("#1c1f24"       nil "brightblack"  ))
   (base8      '("#1b2229"       nil "black"        ))
   (fg         `(,(car macs-base1) nil "black"        ))
   (fg-alt     `(,(car macs-base2) nil "brightblack"  ))

   (grey       base3)
   (red        macs-red-text-sec)
   (orange     macs-orange-text-sec)
   (green      macs-green-text-sec)
   (teal       macs-teal-text-sec)
   (yellow     macs-orange-text-sec)
   (blue       macs-blue-text-sec)
   (dark-blue  macs-blue-text-sec)
   (magenta    macs-purple-text-sec)
   (violet     macs-purple-text-sec)  ;; TODO fix these
   (cyan       macs-teal-text-sec)
   (dark-cyan  macs-teal-text-sec)

   (macs--light-accent (doom-lighten macs-accent 0.85))

   ;; face categories -- required for all themes
   (highlight       blue)
   (vertical-bar   (doom-darken base2 0.1))
   (selection      dark-blue)
   (builtin        magenta)
   (comments       base3)
   (doc-comments   (doom-darken comments 0.15))
   (constants      violet)
   (functions      magenta)
   (keywords       red)
   (methods        cyan)
   (operators      blue)
   (type           orange)
   (strings        green)
   (variables      (doom-darken magenta 0.36))
   (numbers        orange)
   (region         `(,(doom-darken (car bg-alt) 0.1) ,@(doom-darken (cdr base0) 0.3)))
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (-modeline-bright macs-brighter-modeline)
   (-no-highlight-variables macs-no-highlight-variables)
   (-modeline-pad
    (when doom-macs-padded-modeline
      (if (integerp doom-macs-padded-modeline) doom-macs-padded-modeline 4)))

   (modeline-fg     'unspecified)
   (modeline-fg-alt macs-base2)

   (modeline-bg
    (if -modeline-bright
        (doom-darken base2 0.05)
      base1))
   (modeline-bg-l
    (if -modeline-bright
        (doom-darken base2 0.1)
      base2))
   (modeline-bg-inactive (doom-darken bg 0.1))
   (modeline-bg-inactive-l `(,(doom-darken (car bg-alt) 0.05) ,@(cdr base1))))


  ;;;; Base theme face overrides
  (;; (font-lock-builtin-face :inherit 'italic :foreground fg :extend t)
   ;; ((font-lock-doc-face &override) :slant 'italic)
   ;; (font-lock-type-face :inherit 'default)
   ;; (font-lock-variable-name-face
   ;;  :foreground (if -no-highlight-variables fg macs-blue-text)
   ;;  :background (if -no-highlight-variables bg macs-blue-blend))
   (font-lock-warning-face              :background macs-red-blend
                                        :foreground macs-red-text)
   (font-lock-negation-char-face        :inherit 'default)
   (font-lock-preprocessor-face         :inherit 'default)
   (font-lock-preprocessor-char-face    :inherit 'default)
   (font-lock-regexp-grouping-backslash :inherit 'default)
   (font-lock-regexp-grouping-construct :inherit 'default)
   ;; (font-lock-constant-face             :background macs-teal-blend
   ;;                                      :foreground macs-teal-text)
   ;; (font-lock-function-name-face        :foreground fg
   ;;                                      :weight 'semi-bold)
   ;; (font-lock-keyword-face              :background macs-purple-blend
   ;;                                      :foreground macs-purple-text)
   (font-lock-string-face               :background macs-green-blend
                                        :foreground macs-green-text )

   (eglot-semantic-keyword              :foreground fg
                                        :background bg)
   (eglot-semantic-namespace            :foreground fg
                                        :background bg)
   (eglot-semantic-struct               :foreground fg
                                        :background bg)
   (eglot-semantic-declaration          :foreground nil
                                        :background nil)
   (eglot-semantic-enum                 :foreground macs-blue-text
                                        :background macs-blue-blend)
   (eglot-semantic-function             :foreground nil
                                        :background nil)
   (eglot-semantic-method               :foreground fg
                                        :background bg)
   (eglot-semantic-operator             :foreground macs-grey-text
                                        :background bg)
   (eglot-semantic-enumMember           :foreground fg
                                        :background bg)
   (eglot-semantic-comment              :foreground macs-yellow-text
                                        :background macs-yellow-blend)
   (eglot-semantic-documentation        :foreground macs-yellow-text
                                        :background macs-yellow-blend)
   (eglot-semantic-variable             :foreground fg
                                        :background bg)
   (eglot-type-hint-face                :foreground macs-grey-text)
   (font-lock-keyword-face              :foreground fg
                                        :background bg)
   (font-lock-operator-face             :foreground macs-grey-text
                                        :background bg)
   (font-lock-function-name-face        :foreground macs-blue-text
                                        :background macs-blue-blend)
   (font-lock-function-call-face        :foreground fg
                                        :background bg)
   (font-lock-type-face                 :foreground fg
                                        :background bg)
   (font-lock-constant-face             :foreground macs-purple-text
                                        :background macs-purple-blend)
   (font-lock-builtin-face              :foreground fg
                                        :background bg)
   (font-lock-bracket-face              :foreground macs-grey-text
                                        :background bg)
   (font-lock-delimiter-face            :foreground macs-grey-text
                                        :background bg)
   (font-lock-doc-face                  :foreground macs-yellow-text
                                        :background macs-yellow-blend)
   (font-lock-variable-use-face         :foreground fg
                                        :background bg)

   (lazy-highlight :background macs--light-accent
                   :foreground macs-blue-text
                   :distant-foreground base0
                   :weight 'bold)

   ((line-number &override) :foreground (doom-lighten base4 0.15))
   ((line-number-current-line &override) :foreground base8)

   (mode-line
    :background modeline-bg
    :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive
    :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if -modeline-bright base8 highlight))

   ;;;; centaur-tabs
   (centaur-tabs-unselected :background bg-alt :foreground base4)
   ;;;; swiper
   (swiper-line-face    :background macs--light-accent
                        :foreground macs-blue-text)
   (swiper-match-face-1 :inherit 'unspecified
                        :background base0
                        :foreground fg)
   (swiper-background-match-face-1 :inherit 'unspecified
                                   :background base0
                                   :foreground fg-alt)
   (swiper-match-face-2 :inherit 'unspecified
                        :background macs-orange-blend
                        :foreground macs-orange-text
                        :weight 'bold)
   (swiper-background-match-face-2 :inherit 'unspecified
                                   :background macs-orange-blend
                                   :foreground macs-orange-text-sec
                                   :weight 'bold)
   (swiper-match-face-3 :inherit 'unspecified
                        :background macs-green-blend
                        :foreground macs-green-text
                        :weight 'bold)
   (swiper-background-match-face-3 :inherit 'unspecified
                                   :background macs-green-blend
                                   :foreground macs-green-text-sec
                                   :weight 'bold)
   (swiper-match-face-4 :inherit 'unspecified
                        :background macs-teal-blend
                        :foreground macs-teal-text
                        :weight 'bold)
   (swiper-background-match-face-4 :inherit 'unspecified
                                   :background macs-teal-blend
                                   :foreground macs-teal-text-sec
                                   :weight 'bold)
   ;;;; company
   (company-tooltip            :inherit 'tooltip)
   (company-tooltip-annotation            :foreground macs-purple-text-sec )
   (company-tooltip-annotation-selection  :foreground macs-purple-text )
   (company-tooltip-common                :foreground highlight
                                          :distant-foreground base0
                                          :weight 'bold)
   (company-tooltip-search     :background highlight
                               :foreground bg
                               :distant-foreground fg
                               :weight 'bold)
   (company-tooltip-search-selection :background macs-blue-blend)
   (company-tooltip-selection  :background macs--light-accent
                               :weight 'bold)
   (company-tooltip-mouse      :background magenta
                               :foreground bg
                               :distant-foreground fg)
   (company-tooltip-annotation :foreground violet
                               :distant-foreground bg)
   (company-scrollbar-bg       :inherit 'tooltip)
   (company-scrollbar-fg       :background highlight)
   (company-preview            :foreground comments)
   (company-preview-common     :background base3
                               :foreground highlight)
   (company-preview-search     :inherit 'company-tooltip-search)
   (company-template-field     :inherit 'match)
   ;;;; clojure
   (clojure-keyword-face :foreground macs-orange-text
                         :background macs-orange-blend)
   ;;;; css-mode <built-in> / scss-mode
   (css-property             :foreground fg
                             :inherit 'italic)
   (css-proprietary-property :foreground macs-orange-text
                             :background macs-orange-blend)
   (css-selector             :foreground macs-purple-text
                             :background macs-purple-blend)
   ;;;; company-box
   (company-box-candidate :foreground fg)
   ;;;; doom-emacs
   (doom-dashboard-banner      :foreground comments)
   (doom-dashboard-menu-title  :foreground macs-purple-text-sec)
   (doom-dashboard-menu-desc   :foreground macs-green-text-sec)
   (doom-dashboard-footer-icon :foreground (doom-darken yellow 0.4))
   (doom-dashboard-loaded      :foreground macs-orange-text)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if -modeline-bright modeline-bg highlight))
   (doom-modeline-buffer-path       :foreground macs-blue-text-sec
                                    :bold bold)
   (doom-modeline-buffer-major-mode :inherit 'doom-modeline-buffer-path )
   (doom-modeline-info              :foreground macs-green-text-sec)
   (doom-modeline-project-dir       :foreground macs-purple-text-sec)
   (doom-modeline-evil-insert-state :foreground macs-teal)
   ;;;; diff-mode
   (diff-removed :foreground red
                 :background macs-red-blend)
   ;;;; ediff <built-in>
   (ediff-current-diff-A        :foreground red
                                :background (doom-lighten red 0.8))
   (ediff-current-diff-B        :foreground green
                                :background (doom-lighten green 0.8))
   (ediff-current-diff-C        :foreground blue
                                :background (doom-lighten blue 0.8))
   (ediff-current-diff-Ancestor :foreground teal
                                :background (doom-lighten teal 0.8))
   ;;;; elixir
   (elixir-atom-face :foreground macs-blue-text
                     :background macs-blue-blend)
   (elixir-attribute-face :foreground macs-teal-text
                          :background macs-teal-blend)
   ;;;; fill column
   (hl-fill-column-face :foreground fg
                        :background macs--light-accent)
   ;;;; git-commit
   (git-commit-summary :foreground fg)
   ;;;; highlight-numbers-mode
   (highlight-numbers-number :foreground macs-teal-text
                             :background macs-teal-blend)
   ;;;; highlight-quoted-mode
   (highlight-quoted-symbol :background macs-blue-blend
                            :foreground macs-blue-text)
   (highlight-quoted-quote  :foreground macs-teal-blend
                            :foreground macs-teal-text)
   ;;;; ivy
   (ivy-current-match :background macs-base5
                      :distant-foreground nil
                      :extend t)
   (ivy-minibuffer-match-face-1
    :background nil
    :foreground fg
    :weight 'light)
   (ivy-minibuffer-match-face-2
    :inherit 'ivy-minibuffer-match-face-1
    :foreground macs-orange-text
    :background macs-orange-blend
    :weight 'semi-bold)
   (ivy-minibuffer-match-face-3
    :inherit 'ivy-minibuffer-match-face-2
    :foreground macs-blue-text
    :background macs-blue-blend
    :weight 'semi-bold)
   (ivy-minibuffer-match-face-4
    :inherit 'ivy-minibuffer-match-face-2
    :foreground macs-green-text
    :background macs-green-blend
    :weight 'semi-bold)
   (ivy-minibuffer-match-highlight :foreground bg
                                   :background macs-purple-text-sec)
   (ivy-highlight-face :foreground macs-purple-text)
   (ivy-confirm-face :foreground success)
   (ivy-match-required-face :foreground error)
   (ivy-virtual :inherit 'italic :foreground doc-comments)
   (ivy-modified-buffer :inherit 'bold :foreground vc-modified)
   ;;;; ivy-posframe
   (ivy-posframe               :background base0)
   ;;;; js2-mode
   (js2-function-param    :foreground fg)
   (js2-function-call     :foreground fg )
   (js2-object-property   :foreground fg :inherit 'italic)
   (js2-jsdoc-tag         :foreground doc-comments)
   (js2-external-variable :foreground fg)
   ;;;; lsp-mode
   (lsp-ui-doc-background      :background base0)
   (lsp-face-highlight-read    :background (doom-blend red bg 0.3))
   (lsp-face-highlight-textual :inherit 'lsp-face-highlight-read)
   (lsp-face-highlight-write   :inherit 'lsp-face-highlight-read)
   ;;;; magit
   (magit-bisect-bad        :background macs-red-blend
                            :foreground macs-red-text)
   (magit-bisect-good       :background macs-green-blend
                            :foreground macs-green-text)
   (magit-bisect-skip       :background macs-orange-blend
                            :foreground macs-orange-text)
   (magit-blame-date        :background macs-base4
                            :foreground macs-red-text)
   (magit-blame-heading     :background macs-base4
                            :foreground macs-orange-text)
   (magit-branch-current    :background bg-alt
                            :foreground macs-blue-text)
   (magit-branch-local      :background bg-alt
                            :foreground macs-teal-text)
   (magit-branch-remote     :background bg-alt
                            :foreground macs-green-text)
   (magit-cherry-equivalent :background macs-base7
                            :foreground macs-purple-text)
   (magit-cherry-unmatched  :background macs-base7
                            :foreground macs-teal-text)

   (magit-diff-added             :foreground macs-green-text-sec
                                 :background macs-green-blend
                                 :extend t)
   (magit-diff-added-highlight   :foreground macs-green-text
                                 :background macs-green-blend
                                 :weight 'bold :extend t)

   (magit-diff-base              :foreground macs-orange-text-sec
                                 :background macs-orange-blend
                                 :extend t)
   (magit-diff-base-highlight    :foreground macs-orange-text
                                 :background macs-orange-blend
                                 :weight 'bold
                                 :extend t)

   (magit-diff-context           :foreground (doom-darken fg 0.4)
                                 :background bg
                                 :extend t)
   (magit-diff-context-highlight :foreground fg
                                 :background bg-alt
                                 :extend t)
   (magit-diff-file-heading           :foreground macs-purple-text-sec
                                      :background macs-purple-blend
                                      :weight 'bold
                                      :extend t)
   (magit-diff-file-heading-selection :foreground macs-purple-text
                                      :background macs-purple-blend
                                      :weight 'bold
                                      :extend t)
   (magit-diff-hunk-heading           :foreground macs-purple-text-sec
                                      :background macs-purple-blend
                                      :extend t)
   (magit-diff-hunk-heading-selection :foreground macs-purple-text-sec
                                      :background macs-purple-blend
                                      :extend t)
   (magit-diff-hunk-heading-highlight :foreground macs-purple-blend
                                      :background macs-purple-text-sec
                                      :weight 'bold
                                      :extend t)

   (magit-diff-removed                :foreground macs-red-text-sec
                                      :background macs-red-blend
                                      :extend t)
   (magit-diff-removed-highlight      :foreground macs-red-text
                                      :background macs-red-blend
                                      :weight 'bold
                                      :extend t)

   (magit-diff-lines-heading          :foreground yellow
                                      :background red
                                      :extend t)
   (magit-diffstat-added              :foreground macs-green)
   (magit-diffstat-removed            :foreground macs-red)
   (magit-dimmed                      :foreground comments)
   (magit-hash                        :foreground fg-alt)
   (magit-header-line :background macs-blue-blend
                      :foreground macs-blue-text
                      :weight 'bold
                      :box `(:line-width 3 :color ,macs-blue-blend))
   (magit-log-author :foreground macs-orange-text-sec)
   (magit-log-date   :foreground macs-blue-text-sec)
   (magit-log-graph  :foreground comments)
   (magit-process-ng :inherit 'error)
   (magit-process-ok :inherit 'success)
   (magit-reflog-amend :foreground magenta)
   (magit-reflog-checkout :foreground blue)
   (magit-reflog-cherry-pick :foreground green)
   (magit-reflog-commit :foreground green)
   (magit-reflog-merge :foreground green)
   (magit-reflog-other :foreground cyan)
   (magit-reflog-rebase :foreground magenta)
   (magit-reflog-remote :foreground cyan)
   (magit-reflog-reset :inherit 'error)
   (magit-refname :foreground comments)
   (magit-section-heading :foreground blue
                          :weight 'bold
                          :extend t)
   (magit-section-heading-selection :foreground orange
                                    :weight 'bold
                                    :extend t)
   (magit-section-highlight :inherit 'hl-line)
   (magit-sequence-drop :foreground red)
   (magit-sequence-head :foreground blue)
   (magit-sequence-part :foreground orange)
   (magit-sequence-stop :foreground green)
   (magit-signature-bad :inherit 'error)
   (magit-signature-error :inherit 'error)
   (magit-signature-expired :foreground orange)
   (magit-signature-good :inherit 'success)
   (magit-signature-revoked :foreground magenta)
   (magit-signature-untrusted :foreground yellow)
   (magit-tag :foreground yellow)
   (magit-filename :foreground violet)
   (magit-section-secondary-heading :foreground violet
                                    :weight 'bold
                                    :extend t)
   ;;;; makefile-*-mode
   (makefile-targets :foreground macs-purple-text
                     :background macs-purple-blend)
   ;;;; markdown-mode
   (markdown-header-face           :inherit 'bold
                                   :foreground macs-purple-text
                                   :background macs-purple-blend)
   (markdown-header-delimiter-face :inherit 'markdown-header-face)
   (markdown-metadata-key-face     :foreground macs-green-text
                                   :background macs-green-blend)
   (markdown-list-face             :foreground fg
                                   :inherit 'bold)
   (markdown-link-face             :foreground macs-blue-text
                                   :background macs-blue-blend)
   (markdown-url-face              :foreground macs-blue-text
                                   :background macs-blue-blend)
   (markdown-italic-face           :inherit 'italic
                                   :foreground fg)
   (markdown-bold-face             :inherit 'bold
                                   :foreground fg)
   (markdown-markup-face           :foreground fg
                                   :inherit 'bold)
   (markdown-blockquote-face       :inherit 'italic
                                   :foreground doc-comments)
   (markdown-pre-face              :foreground fg)
   (markdown-code-face             :background macs-orange-blend
                                   :foreground macs-orange-text
                                   :extend t)
   (markdown-reference-face        :foreground doc-comments)
   (markdown-inline-code-face      :inherit '(markdown-code-face markdown-pre-face)
                                   :extend nil)
   (markdown-html-attr-name-face     :inherit 'font-lock-variable-name-face)
   (markdown-html-attr-value-face    :inherit 'font-lock-string-face)
   (markdown-html-entity-face        :inherit 'font-lock-variable-name-face)
   (markdown-html-tag-delimiter-face :inherit 'markdown-markup-face)
   (markdown-html-tag-name-face      :inherit 'font-lock-keyword-face)
   ;;;; org-mode
   ((outline-1 &override) :foreground red)
   ((outline-2 &override) :foreground orange)
   (org-ellipsis :underline nil :background bg     :foreground red)
   ((org-block-begin-line &override)
    :background macs-orange-blend
    :foreground macs-orange-text
    :weight 'semi-bold)
   ((org-block &override)
    :background macs-orange-blend
    :foreground macs-orange-text)
   ((org-quote &override)
    :background macs-orange-blend
    :foreground macs-orange-text)
   ;;;; racket
   (racket-keyword-argument-face :foreground macs-orange-text
                                 :background macs-orange-blend)
   (racket-selfeval-face :foreground macs-teal-text
                         :background macs-teal-blend)
   ;;;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground macs-blue-text-sec)
   (rainbow-delimiters-depth-2-face :foreground macs-purple-text-sec)
   (rainbow-delimiters-depth-3-face :foreground macs-green-text-sec)
   (rainbow-delimiters-depth-4-face :foreground macs-orange-text-sec)
   (rainbow-delimiters-depth-5-face :foreground macs-teal-text-sec)
   (rainbow-delimiters-depth-6-face :foreground macs-red-text-sec)
   (rainbow-delimiters-depth-7-face :foreground macs-green-text-sec)
   (rainbow-delimiters-unmatched-face  :foreground red
                                       :weight 'bold
                                       :inverse-video t)
   (rainbow-delimiters-mismatched-face :inherit 'rainbow-delimiters-unmatched-face)
   ;;;; rjsx-mode
   (rjsx-tag  :background macs-purple-blend
              :foreground macs-purple-text)
   (rjsx-text :inherit 'default)
   (rjsx-tag-bracket-face :background bg
                          :foreground fg-alt)
   (rjsx-attr :background bg
              :foreground fg
              :inherit 'italic)
   ;;;; solaire-mode
   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-l)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-l)))
   ;;;; web-mode
   (web-mode-current-element-highlight-face :background dark-blue
                                            :foreground bg)
   (web-mode-css-property-name-face :foreground fg
                                    :inherit 'italic)
   (web-mode-doctype-face           :background bg
                                    :foreground comments)
   (web-mode-html-tag-face          :background macs-purple-blend
                                    :foreground macs-purple-text)
   (web-mode-html-attr-name-face    :background bg
                                    :foreground fg
                                    :inherit 'italic)
   (web-mode-html-attr-value-face   :inherit 'font-lock-string-face)
   (web-mode-html-entity-face       :background macs-orange-blend
                                    :foreground macs-orange-text
                                    :inherit 'italic)
   (web-mode-block-control-face     :background bg
                                    :foreground macs-base1)
   (web-mode-html-tag-bracket-face  :background bg
                                    :foreground fg-alt)
   (web-mode-symbol-face            :foreground macs-blue-text
                                    :background macs-blue-blend)
   (web-mode-string-face            :inherit 'font-lock-string-face)
   ;;;; wgrep <built-in>
   (wgrep-face :background base1)
   ;;;; which-key
   (which-key-key-face                   :foreground macs-green-text-sec)
   (which-key-group-description-face     :foreground macs-purple-text-sec)
   (which-key-command-description-face   :foreground fg)
   (which-key-local-map-description-face :foreground macs-orange-text-sec)
   (which-key-separator-face             :background bg-alt :foreground comments)
   ;;;; whitespace
   ((whitespace-tab &override)         :background (if (not (default-value 'indent-tabs-mode)) base0 'unspecified))
   ((whitespace-indentation &override) :background (if (default-value 'indent-tabs-mode) base0 'unspecified)))

  ;;;; Base theme variable overrides-
  ()
  )

;;; macs-theme.el ends here
