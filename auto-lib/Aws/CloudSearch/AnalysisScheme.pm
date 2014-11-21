package Aws::CloudSearch::AnalysisScheme {
  use Moose;
  has AnalysisOptions => (is => 'ro', isa => 'Aws::CloudSearch::AnalysisOptions');
  has AnalysisSchemeLanguage => (is => 'ro', isa => 'Str', required => 1);
  has AnalysisSchemeName => (is => 'ro', isa => 'Str', required => 1);
}
1;
