
package Paws::EC2::GetSerialConsoleAccessStatusResult;
  use Moose;
  has SerialConsoleAccessEnabled => (is => 'ro', isa => 'Bool', request_name => 'serialConsoleAccessEnabled', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetSerialConsoleAccessStatusResult

=head1 ATTRIBUTES


=head2 SerialConsoleAccessEnabled => Bool

If C<true>, access to the EC2 serial console of all instances is
enabled for your account. If C<false>, access to the EC2 serial console
of all instances is disabled for your account.


=head2 _request_id => Str


=cut

