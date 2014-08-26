package Aws::ELB::TagKeyOnly {
  use Moose;
  with ('AWS::API::ResultParser');
  has Key => (is => 'ro', isa => 'Str');
}
1
