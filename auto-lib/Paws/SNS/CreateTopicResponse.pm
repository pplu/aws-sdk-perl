
package Paws::SNS::CreateTopicResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has TopicArn => (is => 'ro', isa => 'Str');

}
1;