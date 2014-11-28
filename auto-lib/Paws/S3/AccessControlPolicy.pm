package Paws::S3::AccessControlPolicy {
  use Moose;
  has Grants => (is => 'ro', isa => 'ArrayRef[Paws::S3::Grant]');
  has Owner => (is => 'ro', isa => 'Paws::S3::Owner');
}
1;
