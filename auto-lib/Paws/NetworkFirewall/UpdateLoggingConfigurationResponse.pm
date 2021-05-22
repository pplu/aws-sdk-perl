
package Paws::NetworkFirewall::UpdateLoggingConfigurationResponse;
  use Moose;
  has FirewallArn => (is => 'ro', isa => 'Str');
  has FirewallName => (is => 'ro', isa => 'Str');
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::NetworkFirewall::LoggingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::UpdateLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 FirewallArn => Str

The Amazon Resource Name (ARN) of the firewall.


=head2 FirewallName => Str

The descriptive name of the firewall. You can't change the name of a
firewall after you create it.


=head2 LoggingConfiguration => L<Paws::NetworkFirewall::LoggingConfiguration>




=head2 _request_id => Str


=cut

1;