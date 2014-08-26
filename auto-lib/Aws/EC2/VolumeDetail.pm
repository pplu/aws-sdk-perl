package Aws::EC2::VolumeDetail {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Size => (is => 'ro', isa => 'Num', required => 1);
}
1
