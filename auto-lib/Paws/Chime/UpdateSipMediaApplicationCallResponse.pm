
package Paws::Chime::UpdateSipMediaApplicationCallResponse;
  use Moose;
  has SipMediaApplicationCall => (is => 'ro', isa => 'Paws::Chime::SipMediaApplicationCall');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateSipMediaApplicationCallResponse

=head1 ATTRIBUTES


=head2 SipMediaApplicationCall => L<Paws::Chime::SipMediaApplicationCall>




=head2 _request_id => Str


=cut

