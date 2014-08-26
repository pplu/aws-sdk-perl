package Aws::RDS::EngineDefaults {
  use Moose;
  with ('AWS::API::ResultParser');
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Parameter]');
}
1
