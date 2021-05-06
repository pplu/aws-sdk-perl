
package Paws::Greengrass::DisassociateServiceRoleFromAccountResponse;
  use Moose;
  has DisassociatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::DisassociateServiceRoleFromAccountResponse

=head1 ATTRIBUTES


=head2 DisassociatedAt => Str

The time when the service role was disassociated from the account.


=head2 _request_id => Str


=cut

