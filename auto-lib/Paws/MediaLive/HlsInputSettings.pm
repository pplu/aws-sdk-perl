package Paws::MediaLive::HlsInputSettings;
  use Moose;
  has Bandwidth => (is => 'ro', isa => 'Int', request_name => 'bandwidth', traits => ['NameInRequest']);
  has BufferSegments => (is => 'ro', isa => 'Int', request_name => 'bufferSegments', traits => ['NameInRequest']);
  has Retries => (is => 'ro', isa => 'Int', request_name => 'retries', traits => ['NameInRequest']);
  has RetryInterval => (is => 'ro', isa => 'Int', request_name => 'retryInterval', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::HlsInputSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::HlsInputSettings object:

  $service_obj->Method(Att1 => { Bandwidth => $value, ..., RetryInterval => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::HlsInputSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Bandwidth

=head1 DESCRIPTION

Placeholder documentation for HlsInputSettings

=head1 ATTRIBUTES


=head2 Bandwidth => Int

  When specified the HLS stream with the m3u8 BANDWIDTH that most closely
matches this value will be chosen, otherwise the highest bandwidth
stream in the m3u8 will be chosen. The bitrate is specified in bits per
second, as in an HLS manifest.


=head2 BufferSegments => Int

  When specified, reading of the HLS input will begin this many buffer
segments from the end (most recently written segment). When not
specified, the HLS input will begin with the first segment specified in
the m3u8.


=head2 Retries => Int

  The number of consecutive times that attempts to read a manifest or
segment must fail before the input is considered unavailable.


=head2 RetryInterval => Int

  The number of seconds between retries when an attempt to read a
manifest or segment fails.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

