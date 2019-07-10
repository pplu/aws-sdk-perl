
package Paws::GuardDuty::ListFindingsResponse;
  use Moose;
  has FindingIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'findingIds', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingIds => ArrayRef[Str|Undef]

The IDs of the findings you are listing.


=head2 NextToken => Str

Pagination parameter to be used on the next list operation to retrieve
more items.


=head2 _request_id => Str


=cut

