
package Paws::SecurityHub::ListMembersResponse;
  use Moose;
  has Members => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Member]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListMembersResponse

=head1 ATTRIBUTES


=head2 Members => ArrayRef[L<Paws::SecurityHub::Member>]

Member details returned by the operation.


=head2 NextToken => Str

The token that is required for pagination.


=head2 _request_id => Str


=cut

