
package Aws::CloudFormation::EstimateTemplateCostOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has Url => (is => 'ro', isa => 'Str');

}
1;