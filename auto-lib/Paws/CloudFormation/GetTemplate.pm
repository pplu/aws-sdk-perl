
package Paws::CloudFormation::GetTemplate {
  use Moose;
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::GetTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetTemplateResult');
}
1;