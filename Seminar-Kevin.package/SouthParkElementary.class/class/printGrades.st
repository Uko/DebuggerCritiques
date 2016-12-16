DynamicCritiques
printGrades
	^ self getGrades associations collect: [ :grade | grade key , self gradeMessage , grade value ]