
package Paws::CloudFormation::EstimateTemplateCostOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Url => (is => 'ro', isa => 'Str');

}
1;