(define-skeleton c-skeleton-if-else
    "Inserting an if - else region" nil
    > "if (" _ ") {\n"
    "} else {\n"
    "}\n")

(define-skeleton c-skeleton-if
"Inserting an if region" nil
        > "if (" _ ") {\n"
    "}\n")

(define-skeleton c-skeleton-for
    "Inserting a for region" nil
    > "for (" _ ";;) {\n"
    "}\n")

(define-skeleton c-skeleton-while
    "Inserting a while region" nil
    > "while (" _ ") {\n"
    "}\n")

(define-skeleton c-skeleton-else
    "Inserting an else branch" nil
    "else {\n"
    > _ \n
    "}\n")

(define-skeleton c-skeleton-class
    "Inserting a class"
    "Classname: "
    "class " str " {\n"
    > _ \n
    "}\n")

(define-skeleton c-skeleton-getinstance
    "Inserting classname::getInstance()"
    "Classname (classname::getInstance()): "
    str "::getInstance()")
