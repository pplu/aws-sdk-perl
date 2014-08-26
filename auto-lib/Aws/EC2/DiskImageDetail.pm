package Aws::EC2::DiskImageDetail {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Bytes => (is => 'ro', isa => 'Num', required => 1);
  has Format => (is => 'ro', isa => 'Str', required => 1);
  has ImportManifestUrl => (is => 'ro', isa => 'Str', required => 1);
}
1
