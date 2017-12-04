
package Paws::Pinpoint::UpdateBaiduChannelResponse;
  use Moose;
  has BaiduChannelResponse => (is => 'ro', isa => 'Paws::Pinpoint::BaiduChannelResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'BaiduChannelResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateBaiduChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaiduChannelResponse => L<Paws::Pinpoint::BaiduChannelResponse>




=head2 _request_id => Str


=cut

