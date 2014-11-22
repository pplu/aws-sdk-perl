
package Paws::Kinesis::DescribeStreamOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has StreamDescription => (is => 'ro', isa => 'Paws::Kinesis::StreamDescription', required => 1);

}
1;