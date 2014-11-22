
package Paws::EC2::DescribeBundleTasksResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has BundleTasks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::BundleTask]', traits => ['Unwrapped'], xmlname => 'bundleInstanceTasksSet');

}
1;