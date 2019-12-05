
package Paws::WAFv2::PutLoggingConfigurationResponse;
  use Moose;
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::WAFv2::LoggingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::PutLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 LoggingConfiguration => L<Paws::WAFv2::LoggingConfiguration>




=head2 _request_id => Str


=cut

1;