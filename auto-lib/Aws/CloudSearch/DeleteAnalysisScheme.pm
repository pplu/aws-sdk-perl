
package Aws::CloudSearch::DeleteAnalysisScheme {
  use Moose;
  has AnalysisSchemeName => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAnalysisScheme');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DeleteAnalysisSchemeResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAnalysisSchemeResult');
}
1;
  