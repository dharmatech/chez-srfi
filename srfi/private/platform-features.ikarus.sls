;; Copyright (c) 2009 Derick Eddington.  All rights reserved.  Licensed under an
;; MIT-style license.  My license is in the file named LICENSE from the original
;; collection this file is distributed with.  If this file is redistributed with
;; some other collection, my license must also be included.

(library (srfi private platform-features)
  (export
    OS-features
    implementation-features)
  (import
    (rnrs)
    (only (ikarus) host-info)
    (srfi private OS-id-features))
  
  (define (OS-features)
    (OS-id-features
     (host-info)
     '(("linux" linux posix)
       ("solaris" solaris posix)
       ("darwin" darwin posix)
       ("bsd" bsd)
       ("freebsd" freebsd posix)
       ("openbsd" openbsd posix)
       ("cygwin" cygwin posix)  ;; correct?
       ("gnu" gnu))))
  
  (define (implementation-features)
    '(ikarus))
)
