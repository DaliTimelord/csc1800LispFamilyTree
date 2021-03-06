(defstruct person 

  (parents nil)) ;; add more slots as needed.


(defun storeperson (symbol-name struct family-tree)

  "Students need to write this! This should enter the person structure in STRUCT into the hashtable in FAMILY-TREE with the key in SYMBOL-NAME."

  family-tree)



(defun personstruct (symbol-name family-tree)

  "Returns a structure of type person corresponding to the key SYMBOL-NAME in the hashtable FAMILY-TREE. If there is no one in the tree with the name in SYMBOL-NAME, returns NIL."

  (gethash symbol-name family-tree nil))



(defun ancestors (p tree)

  "Returns a list of symbol-names of all the ancestors of P in TREE. Does not remove any duplicated names!"

   (let ((parent1 (personstruct (first (person-parents p)) tree))

         (parent2 (personstruct (second (person-parents p)) tree)))

     (when parent1

         (append (list (person-name parent1) (person-name parent2))

                 (ancestors parent1 tree)

                 (ancestors parent2 tree)))))



(defun family ()

  "This is the top-level function for the whole Lisp program."

  (let ((tree (make-hash-table :size 1000 :test #'equal)))

; body of program goes in here!



    ))
