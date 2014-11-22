
package Paws::EC2::BundleInstanceResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has BundleTask => (is => 'ro', isa => 'Paws::EC2::BundleTask', traits => ['Unwrapped'], xmlname => 'bundleInstanceTask');

}
1;