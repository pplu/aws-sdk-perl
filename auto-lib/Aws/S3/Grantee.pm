package Aws::S3::Grantee {
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str');
  has EmailAddress => (is => 'ro', isa => 'Str');
  has ID => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'xsi:type', required => 1);
  has URI => (is => 'ro', isa => 'Str');
}
1
