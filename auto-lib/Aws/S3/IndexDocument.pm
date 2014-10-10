package Aws::S3::IndexDocument {
  use Moose;
  has Suffix => (is => 'ro', isa => 'Str', required => 1);
}
1
