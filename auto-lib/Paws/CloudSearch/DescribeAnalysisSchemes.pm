
package Paws::CloudSearch::DescribeAnalysisSchemes {
  use Moose;
  has AnalysisSchemeNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAnalysisSchemes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearch::DescribeAnalysisSchemesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAnalysisSchemesResult');
}
1;