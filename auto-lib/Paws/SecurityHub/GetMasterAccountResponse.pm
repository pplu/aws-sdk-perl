
package Paws::SecurityHub::GetMasterAccountResponse;
  use Moose;
  has Master => (is => 'ro', isa => 'Paws::SecurityHub::Invitation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetMasterAccountResponse

=head1 ATTRIBUTES


=head2 Master => L<Paws::SecurityHub::Invitation>

A list of details about the Security Hub master account for the current
member account.


=head2 _request_id => Str


=cut

