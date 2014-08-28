
package Aws::RedShift::CreateHsmConfigurationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HsmConfiguration => (is => 'ro', isa => 'Aws::RedShift::HsmConfiguration');

}
1;