package Paws::S3::CloudFunctionConfiguration {
  use Moose;
  has CloudFunction => (is => 'ro', isa => 'Str');
  has Event => (is => 'ro', isa => 'Str');
  has Events => (is => 'ro', isa => 'ArrayRef[Str]');
  has Id => (is => 'ro', isa => 'Str');
  has InvocationRole => (is => 'ro', isa => 'Str');
}
1;
