
package Paws::CloudFormation::UpdateStack {
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str]');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackPolicyBody => (is => 'ro', isa => 'Str');
  has StackPolicyDuringUpdateBody => (is => 'ro', isa => 'Str');
  has StackPolicyDuringUpdateURL => (is => 'ro', isa => 'Str');
  has StackPolicyURL => (is => 'ro', isa => 'Str');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');
  has UsePreviousTemplate => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::UpdateStackOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStackResult');
}
1;