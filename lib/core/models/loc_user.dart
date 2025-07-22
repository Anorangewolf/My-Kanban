import 'package:isar/isar.dart';

// �Զ������ļ�������
// part 'loc_user.g.dart';

/// **�û�����ģ����**
/// ʹ�� @Collection() ע�⽫ LocUser ������Ϊ Isar ����
/// �û�����ģ���Ѱ����������ԣ�
/// - �û�����id��int userid
/// - �û�����String username
/// - ���룺String password
@Collection()
class LocUser {
  /// ���캯��
  LocUser({
    required this.username,
    required this.password,
    this.userid = Isar.autoIncrement,
  });

  // #region �ֶ����Ͷ���
  /// �û�����id
  int userid;

  /// �û���
  @Index()
  String username;

  /// ����
  String password;
  // #endregion

  /// ���Ʒ��������ڸ�������
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
