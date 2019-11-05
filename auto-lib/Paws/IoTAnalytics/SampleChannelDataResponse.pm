
package Paws::IoTAnalytics::SampleChannelDataResponse;
  use Moose;
  has Payloads => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'payloads');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::SampleChannelDataResponse

=head1 ATTRIBUTES


=head2 Payloads => ArrayRef[Str|Undef]

The list of message samples. Each sample message is returned as a
base64-encoded string.


=head2 _request_id => Str


=cut

