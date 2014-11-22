
package Paws::EC2::DescribeConversionTasksResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has ConversionTasks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ConversionTask]', traits => ['Unwrapped'], xmlname => 'conversionTasks');

}
1;