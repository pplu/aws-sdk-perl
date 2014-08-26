package Aws::OpsWorks::SslConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has Certificate => (is => 'ro', isa => 'Str', required => 1);
  has Chain => (is => 'ro', isa => 'Str');
  has PrivateKey => (is => 'ro', isa => 'Str', required => 1);
}
1
