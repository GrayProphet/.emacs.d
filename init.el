;; Менеджер пакетов
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

;; Запускаем пакетные менеджеры
;; (require 'package)
;; (package-initialize)

;; (package-refresh-contents) ;; Закоментирована 
;; так как обновление пакетов занимет много времени и должно
;; по запроску
;; Объявляем список пакето
;; (setq my-packages
;;      '())

;; Проверяем все пакеты из списка и устанавливаем недостающие
;; (dolist (pkg my-packages)
;;  (unless (package-installed-p pkg)
;;    (package-install pkg)))

;;Убираем сообщение приветсвия
(setq inhibit-startup-screen t)

;;Загрузка темы
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

;;Убираем меню бра
(menu-bar-mode -1)

;;Убираем бар инструментов
(tool-bar-mode -1)

;;Убираем скрол бар
(scroll-bar-mode -1)

;;Изменениен курсора строки с квадратного на нижнее подчеркивание
(set-default 'cursor-type 'hbar)

;;Отображение номера колонки и строки
(column-number-mode)

;;Включаем номера строк
(global-linum-mode t)

;;Удобный режим для быстрого доступа к файлам, открытым файлам,
;;и другим спискам внутри редактора. В совокупности с активированным
;;uniquify режимом позволяет *очень* быстро найти нужное.Особенности:
;;по клавише C+<пробел> начинается ввод новой подстроки.
;;По клавише C-f идёт fallback (возврат) на обычный (не-IDO) ввод.
(require 'uniquify)
(require 'ido)
(ido-mode t)
