
package Paws::WAFv2::GetLoggingConfigurationResponse;
  use Moose;
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::WAFv2::LoggingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::GetLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 LoggingConfiguration => L<Paws::WAFv2::LoggingConfiguration>

The LoggingConfiguration for the specified web ACL.


=head2 _request_id => Str


=cut

1;