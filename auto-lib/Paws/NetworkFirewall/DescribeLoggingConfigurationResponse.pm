
package Paws::NetworkFirewall::DescribeLoggingConfigurationResponse;
  use Moose;
  has FirewallArn => (is => 'ro', isa => 'Str');
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::NetworkFirewall::LoggingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DescribeLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 FirewallArn => Str

The Amazon Resource Name (ARN) of the firewall.


=head2 LoggingConfiguration => L<Paws::NetworkFirewall::LoggingConfiguration>




=head2 _request_id => Str


=cut

1;