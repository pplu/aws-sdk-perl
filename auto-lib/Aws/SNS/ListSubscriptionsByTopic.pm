
package Aws::SNS::ListSubscriptionsByTopic {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsByTopic');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::ListSubscriptionsByTopicResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsByTopicResult');
}
1;
  