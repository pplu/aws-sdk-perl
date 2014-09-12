package Aws::EC2::Storage {
  use Moose;
  has S3 => (is => 'ro', isa => 'Aws::EC2::S3Storage');
}
1
