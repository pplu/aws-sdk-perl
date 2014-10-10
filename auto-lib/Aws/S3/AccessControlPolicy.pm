package Aws::S3::AccessControlPolicy {
  use Moose;
  has Grants => (is => 'ro', isa => 'ArrayRef[Aws::S3::Grant]', traits => ['Unwrapped'], xmlname => 'AccessControlList');
  has Owner => (is => 'ro', isa => 'Aws::S3::Owner');
}
1
