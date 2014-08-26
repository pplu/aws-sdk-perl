package Aws::EC2::Storage {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has S3 => (is => 'ro', isa => 'Aws::EC2::S3Storage');
}
1
