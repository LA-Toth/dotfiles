(define-skeleton php-skeleton-foreach
    "Inserting a simple foreach region"
    "Array or function name: "
    "foreach (" str " as $v) {\n"
    > _ \n
    "}\n")

(define-skeleton php-skeleton-foreach-kv
    "Inserting a key-value foreach region"
    "Array or function name: "
    "foreach (" str " as $k => $v) {\n"
    > _ \n
    "}\n")

(define-skeleton php-skeleton-for
    "Inserting a for region" nil
    > "for (" _ ";;) {\n"
    "}\n")

(define-skeleton php-skeleton-else
    "Inserting an else branch" nil
    "else {\n"
    > _ \n
    "}\n")

(define-skeleton php-skeleton-class
    "Inserting a class"
    "Classname: "
    "class " str " {\n"
    > _ \n
    "}\n")

(define-skeleton php-skeleton-getinstance
    "Inserting classname::getInstance()"
    "Classname (classname::getInstance()): "
    str "::getInstance()")

(define-skeleton php-skeleton-function
    "Inserting a function"
    "Function name: "
    "public function " str "() {\n"
    > _ \n
    "}\n")


(define-skeleton php-skeleton-private-function
    "Inserting a function"
    "Function name: "
    "private function " str "() {\n"
    > _ \n
    "}\n")
