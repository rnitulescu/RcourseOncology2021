## 11) merge
x <- data.frame(id=1:3, var1=rnorm(3, 10))
y <- data.frame(id=2:5, var2=rnorm(4, 100))

## Example: left join
merge(x=x, y=y, by="id", all.x=TRUE)

## Can also right join, inner join, or outer join
## Just modify the "all.x" and "all.y" parameters
