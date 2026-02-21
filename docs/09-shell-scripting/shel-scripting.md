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

## If and Conditions
# شرط ها 


# File Test Operators

    -e: Checks if a file exists
    -d: Checks if a directory exists
    -f: Checks if a file is a regular file
    -s: Checks if a file is not empty

<br>

# Comparison Operators

    -eq: Equal to
    -ne: Not equal to
    -lt: Less than
    -le: Less than or equal to
    -gt: Greater than
    -ge: Greater than or equal to
<br>

# String Comparison Operators

    =: Equal to
    !=: Not equal to
    <: Less than, in ASCII alphabetical order
    >: Greater than, in ASCII alphabetical order


