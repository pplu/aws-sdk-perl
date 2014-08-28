
package Aws::CloudSearch::DefineAnalysisScheme {
  use Moose;
  has AnalysisScheme => (is => 'ro', isa => 'Aws::CloudSearch::AnalysisScheme', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DefineAnalysisScheme');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DefineAnalysisSchemeResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DefineAnalysisSchemeResult');
}
1;
  