
package Aws::CloudFormation::ListStackResources {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStackResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::ListStackResourcesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListStackResourcesResult');
}
1;