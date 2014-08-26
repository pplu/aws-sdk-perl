package Aws::SimpleWorkflow::ActivityTypeInfo {
  use Moose;
  with ('AWS::API::ResultParser');
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has creationDate => (is => 'ro', isa => 'Str', required => 1);
  has deprecationDate => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Str', required => 1);
}
1
