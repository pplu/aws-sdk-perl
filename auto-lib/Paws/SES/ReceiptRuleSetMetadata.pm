package Paws::SES::ReceiptRuleSetMetadata;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
1;
