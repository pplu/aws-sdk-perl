
package Aws::CloudSearch::DefineAnalysisSchemeResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has AnalysisScheme => (is => 'ro', isa => 'Aws::CloudSearch::AnalysisSchemeStatus', required => 1);

}
1;