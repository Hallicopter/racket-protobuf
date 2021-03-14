#lang info
;; This file is part of Protocol Buffers for Racket.
;; Copyright (c) 2012-2018 by Thomas C. Chust <chust@web.de>
;;
;; Protocol Buffers for Racket is free software: you can redistribute
;; it and/or modify it under the terms of the GNU Lesser General
;; Public License as published by the Free Software Foundation, either
;; version 3 of the License, or (at your option) any later version.
;;
;; Protocol Buffers for Racket is distributed in the hope that it will
;; be useful, but WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
;; PURPOSE. See the GNU Lesser General Public License for more
;; details.
;;
;; You should have received a copy of the GNU Lesser General Public
;; License along with Protocol Buffers for Racket. If not, see
;; <http://www.gnu.org/licenses/>.
(define name
  "Protocol Buffers")
(define blurb
  '("Protocol Buffer serialization library and ProtoC code generator plugin"))
(define categories
  '(io net))
(define repositories
  '("4.x"))

(define version
  "1.1.3")
(define release-notes
  '((dl
     (dt "1.1.3") (dd "Fixed possible collision between message constructor name and field name")
     (dt "1.1.2") (dd "Fixed bug deserializing required submessages")
     (dt "1.1.1") (dd "Repackaging for new Racket package manager")
     (dt "1.1.0") (dd "Destructive message merging, serialized field sorting")
     (dt "1.0.0") (dd "Initial release"))))

(define collection
  "protobuf")
(define primary-file
  "main.rkt")

(define deps
  (list "base" "srfi-lib" "srfi-lite-lib"))
(define build-deps
  (list "racket-doc" "scribble-lib"))

(define racket-launcher-names
  '("protoc-gen-racket"))
(define racket-launcher-flags
  '(("-l" "protobuf/generator" "-m-")))

(define scribblings
  '(("scribblings/main.scrbl" (multi-page) (interop))
    ("scribblings/generator.scrbl" (multi-page) (tool))))
