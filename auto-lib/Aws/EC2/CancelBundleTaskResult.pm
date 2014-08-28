
package Aws::EC2::CancelBundleTaskResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has BundleTask => (is => 'ro', isa => 'Aws::EC2::BundleTask', traits => ['Unwrapped'], xmlname => 'bundleInstanceTask');

}
1;