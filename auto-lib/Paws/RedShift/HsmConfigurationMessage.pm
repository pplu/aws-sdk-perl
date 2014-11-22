
package Paws::RedShift::HsmConfigurationMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has HsmConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::HsmConfiguration]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;