class H5Routes {
  static const String baseUrl = 'https://vermillion-mermaid-82ec21.netlify.app';

  // 私聊页面
  static String privateChat(String chatId) => '$baseUrl/private-chat?id=$chatId';

  // 图片帖子详情页面
  static String articleDetail(String postId) => '$baseUrl/article-detail?id=$postId';

  // 发布图片帖子页面
  static String sendDynamic() => '$baseUrl/send-dynamic';

  // 视频帖子详情页面
  static String shortVideo(String postId) => '$baseUrl/short-video?id=$postId';

  // 发布视频帖子页面
  static String publishVideo() => '$baseUrl/publish-video';

  // AI付费页面
  static String chatView() => '$baseUrl/chat-view';

  // 他人主页页面
  static String otherHome(String userId) => '$baseUrl/other-home?id=$userId';

  // 举报页面
  static String topReport() => '$baseUrl/top-report';

  // 设置页面
  static String setupPage() => '$baseUrl/setup-page';

  // 关注页面
  static String follow(String userId) => '$baseUrl/follow?id=$userId';

  // 粉丝页面
  static String fans(String userId) => '$baseUrl/fans?id=$userId';

  // 黑名单页面
  static String blackList(String userId) => '$baseUrl/black-list?id=$userId';

  // 修改个人信息页面
  static String editInfo() => '$baseUrl/edit-info';

  // 我的金币页面
  static String goldCoin() => '$baseUrl/gold-coin';

  // 隐私协议页面
  static String privacyAgreement() => '$baseUrl/privacy-agreement';

  // 用户协议页面
  static String userAgreement() => '$baseUrl/user-agreement';
}

