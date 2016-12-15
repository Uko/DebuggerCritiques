Demo
getGrades
	|gradesDictionary|
	gradesDictionary := Dictionary new.
	gradesDictionary at: 'Kyle Broflovsky' put: 6.
	gradesDictionary at: 'Eric Cartman' put: 4.
	gradesDictionary at: 'Stan Marsh' put: 5.
	gradesDictionary at: 'Kenny McCormick' put: 2.
	^ gradesDictionary