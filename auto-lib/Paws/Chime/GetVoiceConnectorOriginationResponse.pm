
package Paws::Chime::GetVoiceConnectorOriginationResponse;
  use Moose;
  has Origination => (is => 'ro', isa => 'Paws::Chime::Origination');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetVoiceConnectorOriginationResponse

=head1 ATTRIBUTES


=head2 Origination => L<Paws::Chime::Origination>

The origination setting details.


=head2 _request_id => Str


=cut

