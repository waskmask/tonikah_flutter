class ProfileInfo{
  String?name;
  String?icon;

  ProfileInfo({this.name,this.icon});

  static List<ProfileInfo>basicInfoList = [
    ProfileInfo(
      name: 'Doctorate',
      icon: 'education.svg',
    ),
    ProfileInfo(
      name: 'Employee',
      icon: 'work.svg',
    ),
    ProfileInfo(
      name: 'Doctor',
      icon: 'position.svg',
    ),
    ProfileInfo(
      name: '\$50000 Annual Income',
      icon: 'position.svg',
    ),
    ProfileInfo(
      name: 'Indian',
      icon: 'position.svg',
    ),
    ProfileInfo(
      name: 'Grew up in: India',
      icon: 'position.svg',
    ),
    ProfileInfo(
      name: 'Never Married',
      icon: 'diamond.svg',
    ),
    ProfileInfo(
      name: 'Has Children',
      icon: 'have_children.svg',
    ),
  ];

  static List<ProfileInfo>apperanceInfoList = [
    ProfileInfo(
      name: "5'8'(173 cm)",
      icon: 'height.svg',
    ),
    ProfileInfo(
      name: 'Very Fair',
      icon: 'complexion.svg',
    ),
    ProfileInfo(
      name: 'Algerian-Arab',
      icon: 'ethnic_group.svg',
    ),
  ];

  static List<ProfileInfo>marriageInfoList = [
    ProfileInfo(
      name: "4-12 Months",
      icon: 'calendar.svg',
    ),
    ProfileInfo(
      name: 'Want to have kids',
      icon: 'want_cildren.svg',
    ),
    ProfileInfo(
      name: 'Open to relocate globally',
      icon: 'location_city.svg',
    ),
  ];

  static List<ProfileInfo>religiousInfoList = [
    ProfileInfo(
      name: "Sunni",
      icon: 'sect.svg',
    ),
    ProfileInfo(
      name: 'Hanafi',
      icon: 'compass.svg',
    ),
    ProfileInfo(
      name: 'Ahl-e-Hadith',
      icon: 'following.svg',
    ),
    ProfileInfo(
      name: 'Very Practicing',
      icon: 'practicing.svg',
    ),
    ProfileInfo(
      name: 'Praying 5 times',
      icon: 'prayers.svg',
    ),
    ProfileInfo(
      name: 'Hijab/Niqab',
      icon: 'prayers.svg',
    ),
  ];

  static List<ProfileInfo>lifestyleInfoList = [
    ProfileInfo(
      name: "Smoker",
      icon: 'smoking.svg',
    ),
    ProfileInfo(
      name: 'Drinking occasionally',
      icon: 'alcohol.svg',
    ),
  ];

  static List<ProfileInfo>personalInfoList = [
    ProfileInfo(
      name: "Revert/Convert",
      icon: 'sect.svg',
    ),
    ProfileInfo(
      name: 'Mother tongue: Urdu',
      icon: 'mic_24.svg',
    ),
    ProfileInfo(
      name: 'English',
      icon: 'translate_24.svg',
    ),
    ProfileInfo(
      name: 'Hindi',
      icon: 'translate_24.svg',
    ),
    ProfileInfo(
      name: 'German',
      icon: 'translate_24.svg',
    ),
  ];

  static List<ProfileInfo>hobbiesInfoList = [
    ProfileInfo(
      name: "Sports",
      icon: 'sect.svg',
    ),
    ProfileInfo(
      name: 'Reading',
      icon: 'mic_24.svg',
    ),
    ProfileInfo(
      name: 'Travelling',
      icon: 'translate_24.svg',
    ),
    ProfileInfo(
      name: 'Cooking',
      icon: 'translate_24.svg',
    ),
    ProfileInfo(
      name: 'Baking',
      icon: 'translate_24.svg',
    ),
    ProfileInfo(
      name: 'Music',
      icon: 'translate_24.svg',
    ),
  ];

}