;;; savingstar.el --- Helper functions for navigating the SavingStar codebase

;; Copyright (C) 2011  Christopher Giroir

;; Author: Christopher Giroir <cgiroir@berklee.edu>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(require 'savingstar-custom)
(require 'ido)

;; Savingstar keymap
(define-prefix-command 'savingstar-map)
(global-set-key (kbd "C-c s") 'savingstar-map)

(defun savingstar/goto ()
  "Pops up an ido menu with savingstar folders"
  (interactive)
  (find-file (cdr (assoc (ido-completing-read "Savingstar goto "
                                              (mapcar 'car savingstar-dirs))
                         savingstar-dirs))))
(define-key savingstar-map (kbd "g") 'savingstar/goto)

(provide 'savingstar)
;;; savingstar.el ends here
