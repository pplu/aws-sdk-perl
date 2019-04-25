package Paws::MediaConvert::M2tsSettings;
  use Moose;
  has AudioBufferModel => (is => 'ro', isa => 'Str', request_name => 'audioBufferModel', traits => ['NameInRequest']);
  has AudioFramesPerPes => (is => 'ro', isa => 'Int', request_name => 'audioFramesPerPes', traits => ['NameInRequest']);
  has AudioPids => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'audioPids', traits => ['NameInRequest']);
  has Bitrate => (is => 'ro', isa => 'Int', request_name => 'bitrate', traits => ['NameInRequest']);
  has BufferModel => (is => 'ro', isa => 'Str', request_name => 'bufferModel', traits => ['NameInRequest']);
  has DvbNitSettings => (is => 'ro', isa => 'Paws::MediaConvert::DvbNitSettings', request_name => 'dvbNitSettings', traits => ['NameInRequest']);
  has DvbSdtSettings => (is => 'ro', isa => 'Paws::MediaConvert::DvbSdtSettings', request_name => 'dvbSdtSettings', traits => ['NameInRequest']);
  has DvbSubPids => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'dvbSubPids', traits => ['NameInRequest']);
  has DvbTdtSettings => (is => 'ro', isa => 'Paws::MediaConvert::DvbTdtSettings', request_name => 'dvbTdtSettings', traits => ['NameInRequest']);
  has DvbTeletextPid => (is => 'ro', isa => 'Int', request_name => 'dvbTeletextPid', traits => ['NameInRequest']);
  has EbpAudioInterval => (is => 'ro', isa => 'Str', request_name => 'ebpAudioInterval', traits => ['NameInRequest']);
  has EbpPlacement => (is => 'ro', isa => 'Str', request_name => 'ebpPlacement', traits => ['NameInRequest']);
  has EsRateInPes => (is => 'ro', isa => 'Str', request_name => 'esRateInPes', traits => ['NameInRequest']);
  has ForceTsVideoEbpOrder => (is => 'ro', isa => 'Str', request_name => 'forceTsVideoEbpOrder', traits => ['NameInRequest']);
  has FragmentTime => (is => 'ro', isa => 'Num', request_name => 'fragmentTime', traits => ['NameInRequest']);
  has MaxPcrInterval => (is => 'ro', isa => 'Int', request_name => 'maxPcrInterval', traits => ['NameInRequest']);
  has MinEbpInterval => (is => 'ro', isa => 'Int', request_name => 'minEbpInterval', traits => ['NameInRequest']);
  has NielsenId3 => (is => 'ro', isa => 'Str', request_name => 'nielsenId3', traits => ['NameInRequest']);
  has NullPacketBitrate => (is => 'ro', isa => 'Num', request_name => 'nullPacketBitrate', traits => ['NameInRequest']);
  has PatInterval => (is => 'ro', isa => 'Int', request_name => 'patInterval', traits => ['NameInRequest']);
  has PcrControl => (is => 'ro', isa => 'Str', request_name => 'pcrControl', traits => ['NameInRequest']);
  has PcrPid => (is => 'ro', isa => 'Int', request_name => 'pcrPid', traits => ['NameInRequest']);
  has PmtInterval => (is => 'ro', isa => 'Int', request_name => 'pmtInterval', traits => ['NameInRequest']);
  has PmtPid => (is => 'ro', isa => 'Int', request_name => 'pmtPid', traits => ['NameInRequest']);
  has PrivateMetadataPid => (is => 'ro', isa => 'Int', request_name => 'privateMetadataPid', traits => ['NameInRequest']);
  has ProgramNumber => (is => 'ro', isa => 'Int', request_name => 'programNumber', traits => ['NameInRequest']);
  has RateMode => (is => 'ro', isa => 'Str', request_name => 'rateMode', traits => ['NameInRequest']);
  has Scte35Pid => (is => 'ro', isa => 'Int', request_name => 'scte35Pid', traits => ['NameInRequest']);
  has Scte35Source => (is => 'ro', isa => 'Str', request_name => 'scte35Source', traits => ['NameInRequest']);
  has SegmentationMarkers => (is => 'ro', isa => 'Str', request_name => 'segmentationMarkers', traits => ['NameInRequest']);
  has SegmentationStyle => (is => 'ro', isa => 'Str', request_name => 'segmentationStyle', traits => ['NameInRequest']);
  has SegmentationTime => (is => 'ro', isa => 'Num', request_name => 'segmentationTime', traits => ['NameInRequest']);
  has TimedMetadataPid => (is => 'ro', isa => 'Int', request_name => 'timedMetadataPid', traits => ['NameInRequest']);
  has TransportStreamId => (is => 'ro', isa => 'Int', request_name => 'transportStreamId', traits => ['NameInRequest']);
  has VideoPid => (is => 'ro', isa => 'Int', request_name => 'videoPid', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::M2tsSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::M2tsSettings object:

  $service_obj->Method(Att1 => { AudioBufferModel => $value, ..., VideoPid => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::M2tsSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioBufferModel

=head1 DESCRIPTION

Settings for M2TS Container.

=head1 ATTRIBUTES


=head2 AudioBufferModel => Str

  


=head2 AudioFramesPerPes => Int

  The number of audio frames to insert for each PES packet.


=head2 AudioPids => ArrayRef[Int]

  Packet Identifier (PID) of the elementary audio stream(s) in the
transport stream. Multiple values are accepted, and can be entered in
ranges and/or by comma separation.


=head2 Bitrate => Int

  The output bitrate of the transport stream in bits per second. Setting
to 0 lets the muxer automatically determine the appropriate bitrate.
Other common values are 3750000, 7500000, and 15000000.


=head2 BufferModel => Str

  


=head2 DvbNitSettings => L<Paws::MediaConvert::DvbNitSettings>

  


=head2 DvbSdtSettings => L<Paws::MediaConvert::DvbSdtSettings>

  


=head2 DvbSubPids => ArrayRef[Int]

  Packet Identifier (PID) for input source DVB Subtitle data to this
output. Multiple values are accepted, and can be entered in ranges
and/or by comma separation.


=head2 DvbTdtSettings => L<Paws::MediaConvert::DvbTdtSettings>

  


=head2 DvbTeletextPid => Int

  Packet Identifier (PID) for input source DVB Teletext data to this
output.


=head2 EbpAudioInterval => Str

  


=head2 EbpPlacement => Str

  


=head2 EsRateInPes => Str

  


=head2 ForceTsVideoEbpOrder => Str

  


=head2 FragmentTime => Num

  The length in seconds of each fragment. Only used with EBP markers.


=head2 MaxPcrInterval => Int

  Maximum time in milliseconds between Program Clock References (PCRs)
inserted into the transport stream.


=head2 MinEbpInterval => Int

  When set, enforces that Encoder Boundary Points do not come within the
specified time interval of each other by looking ahead at input video.
If another EBP is going to come in within the specified time interval,
the current EBP is not emitted, and the segment is "stretched" to the
next marker. The lookahead value does not add latency to the system.
The Live Event must be configured elsewhere to create sufficient
latency to make the lookahead accurate.


=head2 NielsenId3 => Str

  


=head2 NullPacketBitrate => Num

  Value in bits per second of extra null packets to insert into the
transport stream. This can be used if a downstream encryption system
requires periodic null packets.


=head2 PatInterval => Int

  The number of milliseconds between instances of this table in the
output transport stream.


=head2 PcrControl => Str

  


=head2 PcrPid => Int

  Packet Identifier (PID) of the Program Clock Reference (PCR) in the
transport stream. When no value is given, the encoder will assign the
same value as the Video PID.


=head2 PmtInterval => Int

  The number of milliseconds between instances of this table in the
output transport stream.


=head2 PmtPid => Int

  Packet Identifier (PID) for the Program Map Table (PMT) in the
transport stream.


=head2 PrivateMetadataPid => Int

  Packet Identifier (PID) of the private metadata stream in the transport
stream.


=head2 ProgramNumber => Int

  The value of the program number field in the Program Map Table.


=head2 RateMode => Str

  


=head2 Scte35Pid => Int

  Packet Identifier (PID) of the SCTE-35 stream in the transport stream.


=head2 Scte35Source => Str

  


=head2 SegmentationMarkers => Str

  


=head2 SegmentationStyle => Str

  


=head2 SegmentationTime => Num

  The length in seconds of each segment. Required unless markers is set
to _none_.


=head2 TimedMetadataPid => Int

  Packet Identifier (PID) of the timed metadata stream in the transport
stream.


=head2 TransportStreamId => Int

  The value of the transport stream ID field in the Program Map Table.


=head2 VideoPid => Int

  Packet Identifier (PID) of the elementary video stream in the transport
stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

