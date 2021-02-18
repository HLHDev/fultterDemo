enum DoubanCategory {
  Movie,
  Book,
  Music,
}

class DoubanModel {
  static String getDouBanTitle(DoubanCategory category) {
    if(category == DoubanCategory.Movie) {
      return "电影";
    } else if(category == DoubanCategory.Book) {
      return "图书";
    } else {
      return "音乐";
    }
  }

  static List<String> getMoreTitle(DoubanCategory category) {
    if(category == DoubanCategory.Movie) {
      return ["近期热映",'喜欢','热门'];
    } else if(category == DoubanCategory.Music) {
      return ["播放",'喜欢'];
    } else {
      return ["新书",'推荐','热门'];
    }
  }
}