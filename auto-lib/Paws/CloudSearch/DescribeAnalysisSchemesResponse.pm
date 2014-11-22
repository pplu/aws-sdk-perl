
package Paws::CloudSearch::DescribeAnalysisSchemesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has AnalysisSchemes => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearch::AnalysisSchemeStatus]', required => 1);

}
1;