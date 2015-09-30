package Paws::SES::ReceiptRule;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::SES::ReceiptAction]');
  has Enabled => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Recipients => (is => 'ro', isa => 'ArrayRef[Str]');
  has ScanEnabled => (is => 'ro', isa => 'Bool');
  has TlsPolicy => (is => 'ro', isa => 'Str');
1;
