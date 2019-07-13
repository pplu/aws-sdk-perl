
package Paws::WAFRegional::PutLoggingConfigurationResponse;
  use Moose;
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::WAFRegional::LoggingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::PutLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 LoggingConfiguration => L<Paws::WAFRegional::LoggingConfiguration>

The LoggingConfiguration that you submitted in the request.


=head2 _request_id => Str


=cut

1;