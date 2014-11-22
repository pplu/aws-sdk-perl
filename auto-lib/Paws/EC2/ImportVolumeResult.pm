
package Paws::EC2::ImportVolumeResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has ConversionTask => (is => 'ro', isa => 'Paws::EC2::ConversionTask', traits => ['Unwrapped'], xmlname => 'conversionTask');

}
1;