for file in $(find . -type f -name "*.c")
do
 echo $file
 CORRECT="20"
 trimmedName=`echo $file|cut -d'/' -f2`
 progName=`echo $file | cut -d'/' -f2 | cut -d'.' -f1`
 gcc -o $progName $trimmedName
 if [ -f $progName ]
 then 
    ans=$(./$progName) 
    if [ $ans = $CORRECT ]
    then 
        score=10
    else 
        score=7
    fi
else 
  score=5
 fi
 printf "%s\t%d" $trimmedName $score
done 
