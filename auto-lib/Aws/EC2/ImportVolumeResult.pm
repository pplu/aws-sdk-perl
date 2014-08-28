
package Aws::EC2::ImportVolumeResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ConversionTask => (is => 'ro', isa => 'Aws::EC2::ConversionTask', traits => ['Unwrapped'], xmlname => 'conversionTask');

}
1;