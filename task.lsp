
(defun addElement(lst index value) 
(if (= index 0) 
(setf lst (append (list value) lst))) 
(if (> index 0) 
(push value (cdr (nthcdr (- index 1) lst)))) 
lst) 

(addElement (list 7 2 7 2 7 2 7) 0 3) 
(addElement (list 1 3 1 3 1 3 1) 2 7) 


;
(defun delElement (index lst) 
(if lst
(if (equal index (car lst)) 
(delElement index (cdr lst)) 
(cons (car lst) (delElement index (cdr lst)))) 
nil))
  
(delElement 2 (list 2 5 4 1 7 8 6 9)) 



(defun searchElem (el lst)
    (loop
    for element in lst
    and position from 0
    when (eql element el)
        collect position))

(searchElem 1 (list 4 5 1 56)) 