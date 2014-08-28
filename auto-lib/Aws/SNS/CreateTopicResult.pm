
package Aws::SNS::CreateTopicResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TopicArn => (is => 'ro', isa => 'Str');

}
1;