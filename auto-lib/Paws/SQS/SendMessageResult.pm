
package Paws::SQS::SendMessageResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has MD5OfMessageAttributes => (is => 'ro', isa => 'Str');
  has MD5OfMessageBody => (is => 'ro', isa => 'Str');
  has MessageId => (is => 'ro', isa => 'Str');

}
1;