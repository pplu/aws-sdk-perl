
package Paws::CloudFormation::CreateStack {
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has DisableRollback => (is => 'ro', isa => 'Bool');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str]');
  has OnFailure => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackPolicyBody => (is => 'ro', isa => 'Str');
  has StackPolicyURL => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');
  has TimeoutInMinutes => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::CreateStackOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackResult');
}
1;