
package Paws::Chime::CreateSipMediaApplicationResponse;
  use Moose;
  has SipMediaApplication => (is => 'ro', isa => 'Paws::Chime::SipMediaApplication');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateSipMediaApplicationResponse

=head1 ATTRIBUTES


=head2 SipMediaApplication => L<Paws::Chime::SipMediaApplication>

The SIP media application details.


=head2 _request_id => Str


=cut

