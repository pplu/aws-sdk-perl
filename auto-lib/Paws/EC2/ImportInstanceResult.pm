
package Paws::EC2::ImportInstanceResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has ConversionTask => (is => 'ro', isa => 'Paws::EC2::ConversionTask', traits => ['Unwrapped'], xmlname => 'conversionTask');

}
1;