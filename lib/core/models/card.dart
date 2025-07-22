import 'package:isar/isar.dart';

// �Զ������ļ�������
// part 'card.g.dart';

/// **��Ƭ����ģ����**
/// ʹ�� @Collection() ע�⽫ Card ������Ϊ Isar ����
/// ��Ƭ����ģ���Ѱ����������ԣ�
/// - ��Ƭ����id��int cardid
/// - ��Ƭ���⣺String title
/// - ��Ƭ������String? description
/// - ��Ƭ״̬��bool status
/// - ����ʱ�䣺DateTime createdTime
/// - ��ֹʱ�䣺DateTime? dueTime
/// - ���ȼ���Priority? priority
/// - ��ǩ��List`<String>?` label
@Collection()
class Card {
  /// ���캯��
  Card({
    required this.title,
    required this.createdTime,
    this.cardid = Isar.autoIncrement,
    this.description,
    this.status = false,
    this.dueTime,
    this.priority,
    this.label,
  });

  // #region �ֶ����Ͷ���
  /// ��Ƭ����id
  int? cardid;

  /// ��Ƭ����
  @Index()
  String title;

  /// ��Ƭ����
  String? description;

  /// ��Ƭ״̬
  @Index()
  bool status;

  /// ����ʱ��
  @Index()
  DateTime createdTime;

  /// ��ֹʱ��
  @Index()
  DateTime? dueTime;

  /// ���ȼ�
  @Index()
  @Enumerated(EnumType.value)
  Priority? priority;

  /// ��ǩ
  List<String>? label;
  // #endregion

  /// ���Ʒ��������ڸ�������
  Card copyWith({
    int? cardid,
    String? title,
    String? description,
    bool? status,
    DateTime? createdTime,
    DateTime? dueTime,
    Priority? priority,
    List<String>? label,
  }) {
    return Card(
      cardid: cardid ?? this.cardid,
      title: title ?? this.title,
      description: description ?? this.description,
      status: status ?? this.status,
      createdTime: createdTime ?? this.createdTime,
      dueTime: dueTime ?? this.dueTime,
      priority: priority ?? this.priority,
      label: label ?? this.label,
    );
  }
}

/// ��Ƭ���ȼ�ö��
enum Priority {
  // #region ���ȼ�ö��ֵ
  /// �����ȼ�
  low(0),

  /// �����ȼ�
  medium(1),

  /// �����ȼ�
  high(2);
  // #endregion

  /// ���캯��
  const Priority(this.value);

  /// �������ȼ�ֵ
  final int value;
}
