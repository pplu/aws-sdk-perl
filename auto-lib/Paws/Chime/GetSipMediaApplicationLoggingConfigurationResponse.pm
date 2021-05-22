
package Paws::Chime::GetSipMediaApplicationLoggingConfigurationResponse;
  use Moose;
  has SipMediaApplicationLoggingConfiguration => (is => 'ro', isa => 'Paws::Chime::SipMediaApplicationLoggingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetSipMediaApplicationLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 SipMediaApplicationLoggingConfiguration => L<Paws::Chime::SipMediaApplicationLoggingConfiguration>

The actual logging configuration.


=head2 _request_id => Str


=cut

