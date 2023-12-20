class Content {
  String image;
  String title;
  String description;

  Content(
      {required this.image, required this.title, required this.description});
}

List<Content> contents = [
  Content(
    title: 'Smart Irrigation System',
    image: 'assets/splash.png',
    description: '',
  ),
  Content(
      title: 'Smart System Irrigation',
      image: 'assets/bg1.png',
      description:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it "),
  Content(
      title: 'Reward surprises',
      image: 'assets/bg2.png',
      description:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it "),
];
