
package Paws::Macie2::ListFindingsResponse;
  use Moose;
  has FindingIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'findingIds');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListFindingsResponse

=head1 ATTRIBUTES


=head2 FindingIds => ArrayRef[Str|Undef]

An array of strings, where each string is the unique identifier for a
finding that meets the filter criteria specified in the request.


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 _request_id => Str


=cut

