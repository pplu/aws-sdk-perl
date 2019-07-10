
package Paws::Pinpoint::GetSmsChannelResponse;
  use Moose;
  has SMSChannelResponse => (is => 'ro', isa => 'Paws::Pinpoint::SMSChannelResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'SMSChannelResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetSmsChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SMSChannelResponse => L<Paws::Pinpoint::SMSChannelResponse>




=head2 _request_id => Str


=cut

