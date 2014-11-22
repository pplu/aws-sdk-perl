
package Paws::SNS::CreateTopic {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTopic');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::CreateTopicResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTopicResult');
}
1;