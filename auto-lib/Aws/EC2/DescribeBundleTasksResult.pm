
package Aws::EC2::DescribeBundleTasksResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has BundleTasks => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BundleTask]', traits => ['Unwrapped'], xmlname => 'bundleInstanceTasksSet');

}
1;