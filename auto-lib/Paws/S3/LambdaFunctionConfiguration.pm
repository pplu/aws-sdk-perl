package Paws::S3::LambdaFunctionConfiguration {
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Id => (is => 'ro', isa => 'Str');
  has LambdaFunctionArn => (is => 'ro', isa => 'Str', required => 1);
}
1;
