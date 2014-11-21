
package Aws::Support::DescribeCases {
  use Moose;
  has afterTime => (is => 'ro', isa => 'Str');
  has beforeTime => (is => 'ro', isa => 'Str');
  has caseIdList => (is => 'ro', isa => 'ArrayRef[Str]');
  has displayId => (is => 'ro', isa => 'Str');
  has includeCommunications => (is => 'ro', isa => 'Bool');
  has includeResolvedCases => (is => 'ro', isa => 'Bool');
  has language => (is => 'ro', isa => 'Str');
  has maxResults => (is => 'ro', isa => 'Int');
  has nextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::DescribeCasesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;