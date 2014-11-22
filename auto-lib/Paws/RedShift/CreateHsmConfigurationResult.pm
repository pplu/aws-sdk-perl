
package Paws::RedShift::CreateHsmConfigurationResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has HsmConfiguration => (is => 'ro', isa => 'Paws::RedShift::HsmConfiguration');

}
1;