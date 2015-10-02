package Paws::CloudTrail::PublicKey;
  use Moose;
  has Fingerprint => (is => 'ro', isa => 'Str');
  has ValidityEndTime => (is => 'ro', isa => 'Str');
  has ValidityStartTime => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;
