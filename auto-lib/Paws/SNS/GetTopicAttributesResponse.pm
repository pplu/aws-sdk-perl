
package Paws::SNS::GetTopicAttributesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Paws::SNS::TopicAttributesMap');

}
1;