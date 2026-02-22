## Shell Scripting

شل کد های مارو برای هسته لینوکس ترجمه میکند

#
# Shell Imolementations : 
- sh : Bourne Shell
    - /bin/sh
- bash : (Bourne Again Shell)
    - /bin/bash

-zsh
<br>
-csh
<br>
-fish
<br>

#
فایل های شل با پسوند 
.sh
هستند

```bash

    touch first.sh # ایجاد یک فایل شل

    vim first.sh # از ویرایشگر استفاده میکنیم

```
تعیین شل ها و گستره آن رو در اولین خط فایل شل تعیین میکنیم

```bash
    #!/bin/bash
```

سلام شل
```bash
    #!/bin/bash
    echo "hello shello"

```
اجراش میکنیم

```bash
./first.sh
```
## Permission Denied ?
<details>
احتمالا اخطار مجوز نداشتن میگیرید

```bash
sudo chmod u+x first.sh
```
با این دستور اجازه اجرا کردن فایل رو به کاربر خودتون میدید!

</details>


## Variables : 
# متغییرات

```bash
    first_name= "Esm"
```
به همین سادگی شما میتونید یک متفییر تعریف کنید
<br>
اما نکته اینجاست که علامت مساوی باید چسبیده باشد به متغییرتان

<br>
برای فراخوانی یک متیغییر حتما باید از علامت دالار استفاده کنید

```bash

echo "first name is : "$first_name
```

# گرفتن اطلاعات از کاربر

یکی از مسیرهای وارد کردن اطلاعات به فایل شل

first.sh : 

```bash
#!/bin/bash

echo "say hello to shello" 

val1=$1
val2=$2

echo $val1

echo $val2
                                  
```
اجراش میکنیم :
```bash

./first.sh val1 val2

```

مسیر دیگر گرفتن اطلاعات از کاربر

```bash

read -p "Please Enter UserName : "  user_name
read -p "Please Enter User Group : " user_group

```




















## If and Conditions
# شرط ها 

```bash
if [conditions]
then 
    # statement 
elif [conditions]
then 
    # statement
else 
    # statement
fi
```


# File Test Operators


    https://tldp.org/LDP/abs/html/fto.html

    -e: Checks if a file exists
    -d: Checks if a directory exists
    -f: Checks if a file is a regular file
    -s: Checks if a file is not empty
     -e

-e	

file exists
#

-a 
is deprecated and its use is discouraged.

#
-f
	

file is a regular file (not a directory or device file)
#
-d
	

file is a directory

#

-h

-L
	

file is a symbolic link
#

-b
	

file is a block device
#

-c
	

file is a character device
#

-p
	

file is a pipe
#

-S
	

file is a socket
#

-s
	

file is not zero size
#

-t
	

file (descriptor) is associated with a terminal device

This test option may be used to check whether the stdin [ -t 0 ] or stdout [ -t 1 ] in a given script is a terminal.
#

-r
	

file has read permission (for the user running the test)
#

-w
	

file has write permission (for the user running the test)
#

-x
	

file has execute permission (for the user running the test)
#

-g
	

set-group-id (sgid) flag set on file or directory
#

-u
	

set-user-id (suid) flag set on file
#

-k
	

sticky bit set
#

-O
	

you are owner of file
#

-G
	

group-id of file same as yours
#
-N
	

file modified since it was last read
#
-nt
	

file f1 is newer than f2

if [ "$f1" -nt "$f2" ]
#
-ot
	

file f1 is older than f2

if [ "$f1" -ot "$f2" ]
#

-ef
	

files f1 and f2 are hard links to the same file

if [ "$f1" -ef "$f2" ]

#
!
	

"not" -- reverses the sense of the tests above (returns true if condition absent).


<br>

# Comparison Operators

   متغییر ها رو مقایسه میکنند

   <br>
   عددی

# eq: Equal to

    ```bash

    if [ "$a" -eq "$b" ]

    ```

# ne: Not equal to

    ```bash
    
    if [ "$a" -ne "$b" ]

    ```
# lt: Less than

    ```bash
    
    if [ "$a" -lt "$b" ]

    ```
# le: Less than or equal to

    ```bash
    
    if [ "$a" -le "$b" ]

    ```
# gt: Greater than

    ```bash
    
    if [ "$a" -eq "$b" ]

    ```
# ge: Greater than or equal to

    ```bash
    
    if [ "$a" -ge "$b" ]

    ```
<br>

# String Comparison Operators

    =: Equal to
    !=: Not equal to
    -z : 
    -n : 
    str :

    <: Less than, in ASCII alphabetical order
    >: Greater than, in ASCII alphabetical order
    
# Arithmetic Operators

    +: Addition
    -: Subtraction
    *: Multiplication
    /: Division
    %: Modulus (remainder of division)
    For exponentiation, use external tools like bc or awk.

# Logical Operators

    &&: Logical AND
    ||: Logical OR
    !: Logical NOT

## Loops 
حلفه ها در بش به دو صورت هستند
1. For Loop
2. While Loop

# For loop

```bash

for i in $*

then

    echo $i

fi

```
- $* 
    - یعنی تمامی ورودی ها
<br>
برای نمونه های بیشتر کار با حلقه ها به فایل ها 
مراجعه کنید

2.While Loop
# While Loop : 

```bash
i=1
while [i -le 10] 
do
    echo $i
    ((i++))
done
```



## Functions 
# توابع در بش

```bash
    say_hello()
    {
        echo "First shello Function "
    }
say_helo
```

ورودی دادن به تابع
<br>

دقیقا مثل پارامتر ذادن به یک فایل هنگام اجرای آن هستش

```bash
#!/bin/bash
say_hello()
{
    echo "second $1 shello FUnction "
    echo "and its 2 : $2 Input "

}
say_hello reza value2
```

