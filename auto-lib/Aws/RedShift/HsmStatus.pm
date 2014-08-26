package Aws::RedShift::HsmStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}
1
