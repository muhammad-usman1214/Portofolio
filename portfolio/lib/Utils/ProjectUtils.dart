class ProjectUtils {
  String Image;
  String subtitle;
  String title;
  String? androidlink;
  String? ioslink;
  String? weblink;
  String? gitHubLink;

  ProjectUtils({
    required this.Image,
    required this.title,
    required this.subtitle,
    this.androidlink,
    this.ioslink,
    this.weblink,
    this.gitHubLink,
  });
}
  List<ProjectUtils> HobbyProjectUtils=[
    ProjectUtils(
        Image: 'assets/Projects/04.jpeg',
        title: 'Audio Naat App',
        subtitle: 'Audio_Naat a comprehensive flutter app designed to cater to the spiritual needs of Muslims worldwide. ',
      gitHubLink: 'https://github.com/muhammad-usman1214/Audio_naat.git',


    ),
    ProjectUtils(
        Image: 'assets/Projects/05.jpeg',
        title: 'ChatBox',
        subtitle: 'ChatBox is a Flutter-based chat application that implements Firebase Authentication, Firestore, and the easy code architecture.',
      gitHubLink:'https://github.com/muhammad-usman1214/Chat_App.git',
    ),
    ProjectUtils(
        Image: 'assets/Projects/06.jpeg',
        title: 'OrderBliss',
        subtitle: 'OrderBliss is foodie app that used to Take order in restaurants',
        gitHubLink:'https://github.com/muhammad-usman1214/Foodie.git'
    ),
  ];
  List<ProjectUtils> WorkProjectUtils=[
  ProjectUtils(
    Image: 'assets/Projects/01.jpeg',
    title: 'Naat Collection',
    subtitle: 'Naat app is for Muslims that used for prayer Times and naats',
    androidlink:'https://play.google.com/store/apps/details?id=com.shaheendevs.naat_collection'
  ),
    ProjectUtils(
        Image: 'assets/Projects/02.jpeg',
        title: 'Urdu English Translator',
        subtitle: 'Transaltor app that used to translate urdu to english and vice versa',
        androidlink:'https://play.google.com/store/apps/details?id=com.itsolutions.urduenglishtranslator',
        ioslink: 'https://play.google.com/store/apps/details?id=com.itsolutions.urduenglishtranslator'
    ),
  ];
