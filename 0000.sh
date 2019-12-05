echo "The # here does not begin a comment."
echo 'The # here does not begin a comment.'
echo The \# here does not begin a comment.
echo The # here begins a comment.

echo ${PATH#*:}       # Parameter substitution, not a comment.
echo $(( 2#101011 ))  # Base conversion, not a comment.






# echo hello; echo there


if [ -x "$filename" ]; then    #  Note the space after the semicolon.
#+                   ^^
  echo "File $filename exists."; cp $filename $filename.bak
else   #                       ^^
  echo "File $filename not found."; touch $filename
fi; echo "File test complete."






## 双分号： 终止 case option
case "$variable" in
  abc)  echo "\$variable = abc" ;;
  xyz)  echo "\$variable = xyz" ;;
esac



#    ;;&, ;&
#      Terminators in a case option (version 4+ of Bash). 


# . 点号 等价于 source 命令 。 点号是 bash 的内嵌命令



let "t2 = ((a = 9, 15 / 3))"
echo "a=$a"
echo "t2=$t2"
# Set "a = 9" and "t2 = 15 / 3"


for file in /{,usr/}bin/*d
#             ^    Find all executable files ending in "d"
#                 in /bin and /usr/bin directories.
do
        if [ -x "$file" ]
        then
          echo $file
        fi
done




echo "当前PID=$$"


# 命令组
(a=hello; echo $a)


echo \"{These,words,are,quoted}\"   # " prefix and suffix
# "These" "words" "are" "quoted"

cat {file1,file2,file3} > combined_file
# 合并文件

cp file22.{txt,backup}
# 复制 "file22.txt" 到 "file22.backup"


echo {a..z} # a b c d e f g h i j k l m n o p q r s t u v w x y z
# Echoes characters between a and z.

echo {0..3} # 0 1 2 3
# Echoes characters between 0 and 3.


a=123
{ a=321; }
echo "a = $a"   # a = 321   (value inside code block)



#  command &>filename redirects both the stdout and the stderr of command to filename.












a=375
hello=$a



echo hello    # hello
# Not a variable reference, just the string "hello" ...

echo $hello   # 375
#    ^          This *is* a variable reference.
echo ${hello} # 375
#               Likewise a variable reference, as above.

# Quoting . . .
echo "$hello"    # 375
echo "${hello}"  # 375

echo







echo

# When is a variable "naked", i.e., lacking the '$' in front?
# When it is being assigned, rather than referenced.

# Assignment
a=879
echo "The value of \"a\" is $a."

# Assignment using 'let'
let a=16+5
echo "The value of \"a\" is now $a."

echo

# In a 'for' loop (really, a type of disguised assignment):
echo -n "Values of \"a\" in the loop are: "
for a in 7 8 9 11
do
  echo -n "$a "
done

echo
echo




















echo "###### In the end, bye"
