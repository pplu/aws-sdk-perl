package Aws::EMR::SupportedProductConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Name => (is => 'ro', isa => 'Str');
}
1
