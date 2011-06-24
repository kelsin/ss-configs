;;; savingstar-customs.el --- Customize data for savingstar.el

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

(defgroup savingstar nil
  "Customization for savingstar helpers"
  :group 'Data)

(defcustom savingstar-dirs '(("web" . "~/src/savingstar/savingstar-web") ("api" . "~/src/savingstar/sw-api"))
  "This is a list of all of the rails apps that you want to
  configure"
  :type '(alist :key-type string
                :value-type directory)
  :group 'savingstar)

(provide 'savingstar-customs)
;;; savingstar-customs.el ends here
