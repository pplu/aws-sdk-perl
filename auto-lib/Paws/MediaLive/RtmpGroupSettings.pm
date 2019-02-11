package Paws::MediaLive::RtmpGroupSettings;
  use Moose;
  has AuthenticationScheme => (is => 'ro', isa => 'Str', request_name => 'authenticationScheme', traits => ['NameInRequest']);
  has CacheFullBehavior => (is => 'ro', isa => 'Str', request_name => 'cacheFullBehavior', traits => ['NameInRequest']);
  has CacheLength => (is => 'ro', isa => 'Int', request_name => 'cacheLength', traits => ['NameInRequest']);
  has CaptionData => (is => 'ro', isa => 'Str', request_name => 'captionData', traits => ['NameInRequest']);
  has InputLossAction => (is => 'ro', isa => 'Str', request_name => 'inputLossAction', traits => ['NameInRequest']);
  has RestartDelay => (is => 'ro', isa => 'Int', request_name => 'restartDelay', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::RtmpGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::RtmpGroupSettings object:

  $service_obj->Method(Att1 => { AuthenticationScheme => $value, ..., RestartDelay => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::RtmpGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthenticationScheme

=head1 DESCRIPTION

Placeholder documentation for RtmpGroupSettings

=head1 ATTRIBUTES


=head2 AuthenticationScheme => Str

  Authentication scheme to use when connecting with CDN


=head2 CacheFullBehavior => Str

  Controls behavior when content cache fills up. If remote origin server
stalls the RTMP connection and does not accept content fast enough the
'Media Cache' will fill up. When the cache reaches the duration
specified by cacheLength the cache will stop accepting new content. If
set to disconnectImmediately, the RTMP output will force a disconnect.
Clear the media cache, and reconnect after restartDelay seconds. If set
to waitForServer, the RTMP output will wait up to 5 minutes to allow
the origin server to begin accepting data again.


=head2 CacheLength => Int

  Cache length, in seconds, is used to calculate buffer size.


=head2 CaptionData => Str

  Controls the types of data that passes to onCaptionInfo outputs. If set
to 'all' then 608 and 708 carried DTVCC data will be passed. If set to
'field1AndField2608' then DTVCC data will be stripped out, but 608 data
from both fields will be passed. If set to 'field1608' then only the
data carried in 608 from field 1 video will be passed.


=head2 InputLossAction => Str

  Controls the behavior of this RTMP group if input becomes unavailable.
- emitOutput: Emit a slate until input returns. - pauseOutput: Stop
transmitting data until input returns. This does not close the
underlying RTMP connection.


=head2 RestartDelay => Int

  If a streaming output fails, number of seconds to wait until a restart
is initiated. A value of 0 means never restart.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

