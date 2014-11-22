
package Paws::CloudFormation::EstimateTemplateCost {
  use Moose;
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EstimateTemplateCost');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::EstimateTemplateCostOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'EstimateTemplateCostResult');
}
1;