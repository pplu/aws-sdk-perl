
package Aws::CloudFormation::ListStacks {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackStatusFilter => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::ListStacksResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListStacksResult');
}
1;
