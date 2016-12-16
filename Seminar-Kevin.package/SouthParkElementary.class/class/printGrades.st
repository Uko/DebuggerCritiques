DynamicCritiques
printGrades
	^ self getGrades associations collect: [ :grade | grade key , ' got the grade ' , grade value ]