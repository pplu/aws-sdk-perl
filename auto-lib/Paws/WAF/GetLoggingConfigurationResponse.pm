
package Paws::WAF::GetLoggingConfigurationResponse;
  use Moose;
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::WAF::LoggingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 LoggingConfiguration => L<Paws::WAF::LoggingConfiguration>

The LoggingConfiguration for the specified web ACL.


=head2 _request_id => Str


=cut

1;