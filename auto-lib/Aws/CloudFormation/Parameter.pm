package Aws::CloudFormation::Parameter {
  use Moose;
  with ('AWS::API::ResultParser');
  has ParameterKey => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
  has UsePreviousValue => (is => 'ro', isa => 'Bool');
}
1
