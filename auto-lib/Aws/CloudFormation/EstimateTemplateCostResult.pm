
package Aws::CloudFormation::EstimateTemplateCostResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Url => (is => 'ro', isa => 'Str');

}
1;