
package Paws::SimpleWorkflow::DescribeActivityType {
  use Moose;
  has activityType => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityType', required => 1);
  has domain => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeActivityType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::ActivityTypeDetail');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;