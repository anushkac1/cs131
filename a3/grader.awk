BEGIN{ FS="," } #set delimeter to comma to separate different fields
NR > 1{ #NR >1 avoids header
#here - excluding header - we calculate the sum of scores + total amount of scores by looping through the scores 
#fields 3 -> the number of fields (NF)
 for (i = 3; i <= NF; i++){
  sum[$2] += $i  #associateive array = sum of grades per student 
  amt[$2] ++    #associative array = grades per student
 }
}
END {
#Here we print all the student information by just calling the student info function on each student, s, within the loop of the associative array
#the function calls other functions for each student in order to determine all information 
print "************Student Information************ "
for(s in sum)
 print student_info(s)
print " " 
print " "
#print out the lowest and higest scoring student - no loop
#here we just call our functions and use the sum array to determine the score of each output -> put togather in a print statement
print "************Highest and Lowest Scoring Students Via Total Score************ "
print "The highest scoring student is",  highest_score(), "with a sum grade score of",  sum[highest_score()], "."
print "The lowest scoring student is",  lowest_score(), "with a sum grade score of",  sum[lowest_score()], "."
}


#basic function calulating average score by dividing total grade/number of scores
function calc_average_score(sum, amt){
  return sum/amt 
} 


#function makes use of average score function to determine if student is passing or failing - returns output 
function pass_or_fail(sum, amt){
  avg = calc_average_score(sum, amt)
  if(avg >= 70){
    return "passing"
  }
  else{
   return "failing" 
  }
}

#function calculates highest scoring student by looping through the sum grades/total grades 
function highest_score(){
 max = -999999
 for(s in sum){
  if(sum[s] > max){
   max = sum[s]
   max_student = s
  }
 }
 return max_student
}


#function calculates lowest scoring student by looping through the sum grades/total grades 
function lowest_score(){
 min = 999999
 for(s in sum){
  if(sum[s] < min){
   min = sum[s]
   min_student = s
  }
 }
 return min_student
}


#made a function to combine all student information for easy printing - called inside main script
function student_info(name){
  print "Student Name: ", name
  print "Total Score: ", sum[name]
  print "Average Score: ", calc_average_score(sum[name], amt[name])
  print "Status: ", pass_or_fail(sum[name], amt[name])  
  print " "
}
