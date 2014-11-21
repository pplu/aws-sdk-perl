
package Aws::Kinesis::DescribeStreamOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has StreamDescription => (is => 'ro', isa => 'Aws::Kinesis::StreamDescription', required => 1);

}
1;