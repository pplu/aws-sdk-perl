package Aws::S3::VersioningConfiguration {
  use Moose;
  has MfaDelete => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'MfaDelete');
  has Status => (is => 'ro', isa => 'Str');
}
1
