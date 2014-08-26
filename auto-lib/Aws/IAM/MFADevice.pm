package Aws::IAM::MFADevice {
  use Moose;
  with ('AWS::API::ResultParser');
  has EnableDate => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
}
1
