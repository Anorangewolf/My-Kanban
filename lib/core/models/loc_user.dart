import 'package:isar/isar.dart';

// 自动生成文件后引用
// part 'loc_user.g.dart';

/// **用户数据模型类**
/// 使用 @Collection() 注解将 LocUser 类声明为 Isar 集合
/// 用户数据模型已包含以下属性：
/// - 用户主键id：int userid
/// - 用户名：String username
/// - 密码：String password
@Collection()
class LocUser {
  /// 构造函数
  LocUser({
    required this.username,
    required this.password,
    this.userid = Isar.autoIncrement,
  });

  // #region 字段类型定义
  /// 用户主键id
  int userid;

  /// 用户名
  @Index()
  String username;

  /// 密码
  String password;
  // #endregion

  /// 复制方法，用于更新任务
  LocUser copyWith({
    int? userid,
    String? username,
    String? password,
  }) {
    return LocUser(
      userid: userid ?? this.userid,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }
}
