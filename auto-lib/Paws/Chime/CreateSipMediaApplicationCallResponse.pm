
package Paws::Chime::CreateSipMediaApplicationCallResponse;
  use Moose;
  has SipMediaApplicationCall => (is => 'ro', isa => 'Paws::Chime::SipMediaApplicationCall');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateSipMediaApplicationCallResponse

=head1 ATTRIBUTES


=head2 SipMediaApplicationCall => L<Paws::Chime::SipMediaApplicationCall>

The actual call.


=head2 _request_id => Str


=cut

