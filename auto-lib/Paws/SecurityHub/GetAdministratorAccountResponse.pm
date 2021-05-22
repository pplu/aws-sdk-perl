
package Paws::SecurityHub::GetAdministratorAccountResponse;
  use Moose;
  has Administrator => (is => 'ro', isa => 'Paws::SecurityHub::Invitation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetAdministratorAccountResponse

=head1 ATTRIBUTES


=head2 Administrator => L<Paws::SecurityHub::Invitation>




=head2 _request_id => Str


=cut

