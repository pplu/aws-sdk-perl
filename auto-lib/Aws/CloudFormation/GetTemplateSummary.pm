
package Aws::CloudFormation::GetTemplateSummary {
  use Moose;
  has StackName => (is => 'ro', isa => 'Str');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemplateSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::GetTemplateSummaryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetTemplateSummaryResult');
}
1;