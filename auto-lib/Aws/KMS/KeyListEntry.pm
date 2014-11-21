package Aws::KMS::KeyListEntry {
  use Moose;
  has KeyArn => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
}
1;
