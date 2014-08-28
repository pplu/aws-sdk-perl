
package Aws::CloudFormation::ValidateTemplate {
  use Moose;
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::ValidateTemplateResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ValidateTemplateResult');
}
1;
