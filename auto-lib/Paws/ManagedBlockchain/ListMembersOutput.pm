
package Paws::ManagedBlockchain::ListMembersOutput;
  use Moose;
  has Members => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchain::MemberSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListMembersOutput

=head1 ATTRIBUTES


=head2 Members => ArrayRef[L<Paws::ManagedBlockchain::MemberSummary>]

An array of C<MemberSummary> objects. Each object contains details
about a network member.


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

