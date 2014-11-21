package Aws::RedShift::DefaultClusterParameters {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Parameter]');
}
1;
