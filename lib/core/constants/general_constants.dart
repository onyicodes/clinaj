class AccountType {
  static const String vendor = 'vendor';
  static const String user = 'user';
}

enum ListSpacingValue {
  spacingV100(100),
  spacingV80(80),
  spacingV54(54),
  spacingV32(32),
  spacingV24(24),
  spacingV16(16),

  spacingH48(48),
  spacingH32(32),
  spacingH24(24),
  spacingH16(16),
  spacingH8(8);

  const ListSpacingValue(this.value);
  final double value;
}
