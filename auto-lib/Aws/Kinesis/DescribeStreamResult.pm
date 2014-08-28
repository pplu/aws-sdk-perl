
package Aws::Kinesis::DescribeStreamResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StreamDescription => (is => 'ro', isa => 'Aws::Kinesis::StreamDescription', required => 1);

}
1;
