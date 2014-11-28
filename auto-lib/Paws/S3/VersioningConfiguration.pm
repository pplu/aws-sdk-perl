package Paws::S3::VersioningConfiguration {
  use Moose;
  has MFADelete => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}
1;
