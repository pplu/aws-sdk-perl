
package Paws::AuditManager::ListKeywordsForDataSourceResponse;
  use Moose;
  has Keywords => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'keywords');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ListKeywordsForDataSourceResponse

=head1 ATTRIBUTES


=head2 Keywords => ArrayRef[Str|Undef]

The list of keywords for the specified event mapping source.


=head2 NextToken => Str

The pagination token used to fetch the next set of results.


=head2 _request_id => Str


=cut

