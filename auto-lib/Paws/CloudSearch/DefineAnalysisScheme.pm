
package Paws::CloudSearch::DefineAnalysisScheme {
  use Moose;
  has AnalysisScheme => (is => 'ro', isa => 'Paws::CloudSearch::AnalysisScheme', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DefineAnalysisScheme');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearch::DefineAnalysisSchemeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DefineAnalysisSchemeResult');
}
1;