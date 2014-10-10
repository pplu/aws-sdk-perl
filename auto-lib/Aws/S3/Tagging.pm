package Aws::S3::Tagging {
  use Moose;
  has TagSet => (is => 'ro', isa => 'ArrayRef[Aws::S3::Tag]', required => 1);
}
1
