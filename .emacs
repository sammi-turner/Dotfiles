;; This is the bare bones .emacs file that you need to get started. This will install MELPA.
;; From there, you may configure your settings via the options listed on the GUI editor.
;; To install packages, follow the instructions shown on MELPA's README page : https://github.com/melpa/melpa.
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
