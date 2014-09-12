package Aws::RDS::EngineDefaults {
  use Moose;
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Parameter]');
}
1
