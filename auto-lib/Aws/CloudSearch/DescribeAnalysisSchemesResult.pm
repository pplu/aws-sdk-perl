
package Aws::CloudSearch::DescribeAnalysisSchemesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AnalysisSchemes => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::AnalysisSchemeStatus]', required => 1);

}
1;