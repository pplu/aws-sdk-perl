
package Aws::SNS::ListTopics {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTopics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::ListTopicsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListTopicsResult');
}
1;
  