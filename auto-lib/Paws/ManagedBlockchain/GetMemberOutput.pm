
package Paws::ManagedBlockchain::GetMemberOutput;
  use Moose;
  has Member => (is => 'ro', isa => 'Paws::ManagedBlockchain::Member');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::GetMemberOutput

=head1 ATTRIBUTES


=head2 Member => L<Paws::ManagedBlockchain::Member>

The properties of a member.


=head2 _request_id => Str


=cut

