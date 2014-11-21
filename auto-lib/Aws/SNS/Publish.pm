
package Aws::SNS::Publish {
  use Moose;
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has MessageAttributes => (is => 'ro', isa => 'Aws::SNS::MessageAttributeMap');
  has MessageStructure => (is => 'ro', isa => 'Str');
  has Subject => (is => 'ro', isa => 'Str');
  has TargetArn => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Publish');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::PublishResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PublishResult');
}
1;