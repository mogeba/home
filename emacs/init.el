
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;;;;;;;;1;;;;;;;;;2;;;;;;;;;3;;;;;;;;;4;;;;;;;;;5;;;;;;;;;6;;;;;;;;;7;;;;;;;;;
(setq scheme-program-name    "/data/data/com.termux/files/home/tinyscheme-1.41/scheme")
(setq inferriro-lisp-program "/data/data/com.termux/files/usr/bin/picolisp")

(define-key global-map (kbd "C-x c")   'compile)
(define-key global-map (kbd "C-x g")   'goto-line)
;(define-key global-map (kbd "C-x t")   ')
;(define-key global-map (kbd "C-x w")   ')
;(define-key global-map (kbd "C-x x")   ')
(define-key global-map (kbd "C-x j")   'foo)
(define-key global-map (kbd "C-x p")   'bar)
(define-key global-map (kbd "C-x y")   'baz)

;(define-key global-map (kbd "C-x C-a") ')
;(define-key global-map (kbd "C-x C-g") ')
;(define-key global-map (kbd "C-x C-h") ')
;(define-key global-map (kbd "C-x C-j") ')
;(define-key global-map (kbd "C-x C-y") ')
;;;;;;;;;1;;;;;;;;;2;;;;;;;;;3;;;;;;;;;4;;;;;;;;;5;;;;;;;;;6;;;;;;;;;7;;;;;;;;;
(defun foo ()
  "petty command for learning emacs-lisp, now bound C-x j"
  (interactive)
  (if (y-or-n-p "foo: ")
    (message "Hello")
    (message "Good-bye")))

(defun bar (n)
  "petty command for learning emacs-lisp, now bound C-x p"
  (interactive "Nnumber: ")
  (message "square of %d = %d" n (* n n)))

(defun baz (a b)
  "petty command for learning emacs-lisp, now bound C-x y"
  (interactive "Na: \nnb: ")
  (message "a + b = %d" (+ a b)))
