
package Aws::SNS::GetTopicAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Aws::SNS::TopicAttributesMap');

}
1;