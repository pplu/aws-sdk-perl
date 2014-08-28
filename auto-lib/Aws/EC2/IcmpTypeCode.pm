package Aws::EC2::IcmpTypeCode {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Code => (is => 'ro', isa => 'Int');
  has Type => (is => 'ro', isa => 'Int');
}
1
