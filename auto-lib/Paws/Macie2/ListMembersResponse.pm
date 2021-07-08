
package Paws::Macie2::ListMembersResponse;
  use Moose;
  has Members => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::Member]', traits => ['NameInRequest'], request_name => 'members');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListMembersResponse

=head1 ATTRIBUTES


=head2 Members => ArrayRef[L<Paws::Macie2::Member>]

An array of objects, one for each account that's associated with the
administrator account and meets the criteria specified by the
onlyAssociated request parameter.


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 _request_id => Str


=cut

