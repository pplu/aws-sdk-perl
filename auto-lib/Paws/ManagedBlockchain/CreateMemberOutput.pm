
package Paws::ManagedBlockchain::CreateMemberOutput;
  use Moose;
  has MemberId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::CreateMemberOutput

=head1 ATTRIBUTES


=head2 MemberId => Str

The unique identifier of the member.


=head2 _request_id => Str


=cut

