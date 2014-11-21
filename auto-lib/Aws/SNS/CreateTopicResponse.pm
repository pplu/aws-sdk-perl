
package Aws::SNS::CreateTopicResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has TopicArn => (is => 'ro', isa => 'Str');

}
1;