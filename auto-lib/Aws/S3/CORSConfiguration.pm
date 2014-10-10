package Aws::S3::CORSConfiguration {
  use Moose;
  has CORSRules => (is => 'ro', isa => 'ArrayRef[Aws::S3::CORSRule]', traits => ['Unwrapped'], xmlname => 'CORSRule');
}
1
