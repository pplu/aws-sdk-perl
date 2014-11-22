
package Paws::SNS::GetTopicAttributes {
  use Moose;
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTopicAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::GetTopicAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetTopicAttributesResult');
}
1;