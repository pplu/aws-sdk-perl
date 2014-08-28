
package Aws::EC2::DescribeConversionTasksResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ConversionTasks => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ConversionTask]', traits => ['Unwrapped'], xmlname => 'conversionTasks');

}
1;