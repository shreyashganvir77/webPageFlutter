List<String> accomodation = [
  "Hostel, pg",
  "Canteen",
  "Sports Facilities",
];
List<bool> checkAcco = [false, false, false];
List<String> career = [
  "Placement",
  "Internship",
  "Projects",
];
List<bool> checkCareer = [false, false, false];
List<String> enjoyment = [
  "Restaurants and Cafe",
  "Travel Destinations",
  "Enttertainment Centres",
  "Places to chill near College",
];
List<bool> checkenjoy = [false, false, false, false];
List<String> exam = [
  "Preparation",
];
List<bool> checkExam = [false];
List<String> infra = [
  "Campus",
  "Labs",
  "Library",
];
List<bool> checkInfra = [false, false, false];
List<String> skills = [
  "Soft Skills",
  "Programming",
  "Hardware",
];
List<bool> checkSkills = [false, false, false];
List<String> dept = [
  "Applied Geology",
  "Architecture",
  "Bio Medical Engineering",
  "Bio Technology",
  "Chemical Engineering",
  "Civil Engineering",
  "Computer Science & Engineering",
  "Department of Chemistry",
  "Department of Mathematics",
  "Department of Physics",
  "Department of Humanities & Social Sciences",
  "Electrical Engineering",
  "Electronics & Telecom. Engineering",
  "Information Technology",
  "Master In Computer Application",
  "Mechanical Engineering",
  "Mining Engineering",
  "Metallurgy Engineering",
  "Workshop",
];
List<bool> checkDept = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

List<List> tags = [accomodation, infra, dept, career, skills, enjoyment, exam];
List<String> tagNames = [
  "Accommodation:",
  "Infrastructure:",
  "Department:",
  "Career:",
  "Skills:",
  "Enjoyment:",
  "Exams:",
];
List<List> tagsAns = [
  checkAcco,
  checkInfra,
  checkDept,
  checkCareer,
  checkSkills,
  checkenjoy,
  checkExam,
];
List<String> mainTag = [
  "Accomodation",
  "Infrastructure",
  "Department",
  "Career",
  "Skills",
  "Enjoyment",
  "Exam"
];
List<String> result = [];
