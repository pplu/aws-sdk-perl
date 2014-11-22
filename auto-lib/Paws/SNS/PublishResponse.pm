
package Paws::SNS::PublishResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has MessageId => (is => 'ro', isa => 'Str');

}
1;