import 'package:isar/isar.dart';

// 自动生成文件后引用
// part 'card.g.dart';

/// **卡片数据模型类**
/// 使用 @Collection() 注解将 Card 类声明为 Isar 集合
/// 卡片数据模型已包含以下属性：
/// - 卡片主键id：int cardid
/// - 卡片标题：String title
/// - 卡片描述：String? description
/// - 卡片状态：bool status
/// - 创建时间：DateTime createdTime
/// - 截止时间：DateTime? dueTime
/// - 优先级：Priority? priority
/// - 标签：List`<String>?` label
@Collection()
class Card {
  /// 构造函数
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

  // #region 字段类型定义
  /// 卡片主键id
  int? cardid;

  /// 卡片标题
  @Index()
  String title;

  /// 卡片描述
  String? description;

  /// 卡片状态
  @Index()
  bool status;

  /// 创建时间
  @Index()
  DateTime createdTime;

  /// 截止时间
  @Index()
  DateTime? dueTime;

  /// 优先级
  @Index()
  @Enumerated(EnumType.value)
  Priority? priority;

  /// 标签
  List<String>? label;
  // #endregion

  /// 复制方法，用于更新任务
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

/// 卡片优先级枚举
enum Priority {
  // #region 优先级枚举值
  /// 低优先级
  low(0),

  /// 中优先级
  medium(1),

  /// 高优先级
  high(2);
  // #endregion

  /// 构造函数
  const Priority(this.value);

  /// 定义优先级值
  final int value;
}
