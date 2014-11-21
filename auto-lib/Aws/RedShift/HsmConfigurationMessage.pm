
package Aws::RedShift::HsmConfigurationMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has HsmConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::HsmConfiguration]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;