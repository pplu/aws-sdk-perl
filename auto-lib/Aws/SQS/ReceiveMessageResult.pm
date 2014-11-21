
package Aws::SQS::ReceiveMessageResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Messages => (is => 'ro', isa => 'ArrayRef[Aws::SQS::Message]');

}
1;