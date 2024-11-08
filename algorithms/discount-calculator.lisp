;Create a function called “discount-calculator”. It should calculate the final price based on the original price and the discount applied to its original price. It has one argument, the original price.
;Original price < $20 → Apply a 5% discount
;$20 <= Original price <= $100 → Apply a 10% discount
;Original price > $100 → Apply a 15% discount
;Original price <= $0 → Return a message: “Invalid Price”

(defun discount-calc (price)
  (cond
    ((<= price 0) "Invalid Price")
    ((< price 20) (* price 0.95))
    ((and (>= price 20) (<= price 100)) (* price 0.90))
    (t (* price 0.85))))
