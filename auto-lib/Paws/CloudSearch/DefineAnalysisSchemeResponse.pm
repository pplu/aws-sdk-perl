
package Paws::CloudSearch::DefineAnalysisSchemeResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has AnalysisScheme => (is => 'ro', isa => 'Paws::CloudSearch::AnalysisSchemeStatus', required => 1);

}
1;