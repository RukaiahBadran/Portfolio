class Education {
  final String institutionName;
  final String department;
  final String startTime;
  final String endTime; // Nullable end time
  final String grade;
  final bool start;
  final bool end; // Nullable grade

  Education(
      {required this.institutionName,
      required this.department,
      required this.startTime,
      required this.endTime,
      required this.grade,
      required this.start,
      required this.end});
}

List<Education> educations = [
  Education(
      institutionName: 'University of Edinburgh',
      startTime: 'Sep 2024',
      endTime: 'Sep 2025',
      department: 'MSc. Cyber Security',
      grade: '',
      start: true,
      end: false),

  Education(
      institutionName: 'American University \nof the Middle East',
      startTime: 'Sep 2019',
      endTime: 'June 2023',
      department: 'BSc. Computer Engineering',
      grade: '3.8/4 GPA',
      start: false,
      end: false),
  // Education(
  //     institutionName: 'Palora HSS Ulliyeri',
  //     startTime: 'Jun 2018',
  //     endTime: 'Mar 2020',
  //     department: '',
  //     grade: '75%',
  //     start: false,
  //     end: false),
  // Education(
  //     institutionName: 'GHSS Kokkallur',
  //     startTime: 'Jun 2016',
  //     endTime: 'Mar 2018',
  //     department: '',
  //     grade: '97%',
  //     start: false,
  //     end: true),
];
