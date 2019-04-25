package Paws::MediaLive::M2tsSettings;
  use Moose;
  has AbsentInputAudioBehavior => (is => 'ro', isa => 'Str', request_name => 'absentInputAudioBehavior', traits => ['NameInRequest']);
  has Arib => (is => 'ro', isa => 'Str', request_name => 'arib', traits => ['NameInRequest']);
  has AribCaptionsPid => (is => 'ro', isa => 'Str', request_name => 'aribCaptionsPid', traits => ['NameInRequest']);
  has AribCaptionsPidControl => (is => 'ro', isa => 'Str', request_name => 'aribCaptionsPidControl', traits => ['NameInRequest']);
  has AudioBufferModel => (is => 'ro', isa => 'Str', request_name => 'audioBufferModel', traits => ['NameInRequest']);
  has AudioFramesPerPes => (is => 'ro', isa => 'Int', request_name => 'audioFramesPerPes', traits => ['NameInRequest']);
  has AudioPids => (is => 'ro', isa => 'Str', request_name => 'audioPids', traits => ['NameInRequest']);
  has AudioStreamType => (is => 'ro', isa => 'Str', request_name => 'audioStreamType', traits => ['NameInRequest']);
  has Bitrate => (is => 'ro', isa => 'Int', request_name => 'bitrate', traits => ['NameInRequest']);
  has BufferModel => (is => 'ro', isa => 'Str', request_name => 'bufferModel', traits => ['NameInRequest']);
  has CcDescriptor => (is => 'ro', isa => 'Str', request_name => 'ccDescriptor', traits => ['NameInRequest']);
  has DvbNitSettings => (is => 'ro', isa => 'Paws::MediaLive::DvbNitSettings', request_name => 'dvbNitSettings', traits => ['NameInRequest']);
  has DvbSdtSettings => (is => 'ro', isa => 'Paws::MediaLive::DvbSdtSettings', request_name => 'dvbSdtSettings', traits => ['NameInRequest']);
  has DvbSubPids => (is => 'ro', isa => 'Str', request_name => 'dvbSubPids', traits => ['NameInRequest']);
  has DvbTdtSettings => (is => 'ro', isa => 'Paws::MediaLive::DvbTdtSettings', request_name => 'dvbTdtSettings', traits => ['NameInRequest']);
  has DvbTeletextPid => (is => 'ro', isa => 'Str', request_name => 'dvbTeletextPid', traits => ['NameInRequest']);
  has Ebif => (is => 'ro', isa => 'Str', request_name => 'ebif', traits => ['NameInRequest']);
  has EbpAudioInterval => (is => 'ro', isa => 'Str', request_name => 'ebpAudioInterval', traits => ['NameInRequest']);
  has EbpLookaheadMs => (is => 'ro', isa => 'Int', request_name => 'ebpLookaheadMs', traits => ['NameInRequest']);
  has EbpPlacement => (is => 'ro', isa => 'Str', request_name => 'ebpPlacement', traits => ['NameInRequest']);
  has EcmPid => (is => 'ro', isa => 'Str', request_name => 'ecmPid', traits => ['NameInRequest']);
  has EsRateInPes => (is => 'ro', isa => 'Str', request_name => 'esRateInPes', traits => ['NameInRequest']);
  has EtvPlatformPid => (is => 'ro', isa => 'Str', request_name => 'etvPlatformPid', traits => ['NameInRequest']);
  has EtvSignalPid => (is => 'ro', isa => 'Str', request_name => 'etvSignalPid', traits => ['NameInRequest']);
  has FragmentTime => (is => 'ro', isa => 'Num', request_name => 'fragmentTime', traits => ['NameInRequest']);
  has Klv => (is => 'ro', isa => 'Str', request_name => 'klv', traits => ['NameInRequest']);
  has KlvDataPids => (is => 'ro', isa => 'Str', request_name => 'klvDataPids', traits => ['NameInRequest']);
  has NullPacketBitrate => (is => 'ro', isa => 'Num', request_name => 'nullPacketBitrate', traits => ['NameInRequest']);
  has PatInterval => (is => 'ro', isa => 'Int', request_name => 'patInterval', traits => ['NameInRequest']);
  has PcrControl => (is => 'ro', isa => 'Str', request_name => 'pcrControl', traits => ['NameInRequest']);
  has PcrPeriod => (is => 'ro', isa => 'Int', request_name => 'pcrPeriod', traits => ['NameInRequest']);
  has PcrPid => (is => 'ro', isa => 'Str', request_name => 'pcrPid', traits => ['NameInRequest']);
  has PmtInterval => (is => 'ro', isa => 'Int', request_name => 'pmtInterval', traits => ['NameInRequest']);
  has PmtPid => (is => 'ro', isa => 'Str', request_name => 'pmtPid', traits => ['NameInRequest']);
  has ProgramNum => (is => 'ro', isa => 'Int', request_name => 'programNum', traits => ['NameInRequest']);
  has RateMode => (is => 'ro', isa => 'Str', request_name => 'rateMode', traits => ['NameInRequest']);
  has Scte27Pids => (is => 'ro', isa => 'Str', request_name => 'scte27Pids', traits => ['NameInRequest']);
  has Scte35Control => (is => 'ro', isa => 'Str', request_name => 'scte35Control', traits => ['NameInRequest']);
  has Scte35Pid => (is => 'ro', isa => 'Str', request_name => 'scte35Pid', traits => ['NameInRequest']);
  has SegmentationMarkers => (is => 'ro', isa => 'Str', request_name => 'segmentationMarkers', traits => ['NameInRequest']);
  has SegmentationStyle => (is => 'ro', isa => 'Str', request_name => 'segmentationStyle', traits => ['NameInRequest']);
  has SegmentationTime => (is => 'ro', isa => 'Num', request_name => 'segmentationTime', traits => ['NameInRequest']);
  has TimedMetadataBehavior => (is => 'ro', isa => 'Str', request_name => 'timedMetadataBehavior', traits => ['NameInRequest']);
  has TimedMetadataPid => (is => 'ro', isa => 'Str', request_name => 'timedMetadataPid', traits => ['NameInRequest']);
  has TransportStreamId => (is => 'ro', isa => 'Int', request_name => 'transportStreamId', traits => ['NameInRequest']);
  has VideoPid => (is => 'ro', isa => 'Str', request_name => 'videoPid', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::M2tsSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::M2tsSettings object:

  $service_obj->Method(Att1 => { AbsentInputAudioBehavior => $value, ..., VideoPid => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::M2tsSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AbsentInputAudioBehavior

=head1 DESCRIPTION

Placeholder documentation for M2tsSettings

=head1 ATTRIBUTES


=head2 AbsentInputAudioBehavior => Str

  When set to drop, output audio streams will be removed from the program
if the selected input audio stream is removed from the input. This
allows the output audio configuration to dynamically change based on
input configuration. If this is set to encodeSilence, all output audio
streams will output encoded silence when not connected to an active
input stream.


=head2 Arib => Str

  When set to enabled, uses ARIB-compliant field muxing and removes video
descriptor.


=head2 AribCaptionsPid => Str

  Packet Identifier (PID) for ARIB Captions in the transport stream. Can
be entered as a decimal or hexadecimal value. Valid values are 32 (or
0x20)..8182 (or 0x1ff6).


=head2 AribCaptionsPidControl => Str

  If set to auto, pid number used for ARIB Captions will be auto-selected
from unused pids. If set to useConfigured, ARIB Captions will be on the
configured pid number.


=head2 AudioBufferModel => Str

  When set to dvb, uses DVB buffer model for Dolby Digital audio. When
set to atsc, the ATSC model is used.


=head2 AudioFramesPerPes => Int

  The number of audio frames to insert for each PES packet.


=head2 AudioPids => Str

  Packet Identifier (PID) of the elementary audio stream(s) in the
transport stream. Multiple values are accepted, and can be entered in
ranges and/or by comma separation. Can be entered as decimal or
hexadecimal values. Each PID specified must be in the range of 32 (or
0x20)..8182 (or 0x1ff6).


=head2 AudioStreamType => Str

  When set to atsc, uses stream type = 0x81 for AC3 and stream type =
0x87 for EAC3. When set to dvb, uses stream type = 0x06.


=head2 Bitrate => Int

  The output bitrate of the transport stream in bits per second. Setting
to 0 lets the muxer automatically determine the appropriate bitrate.


=head2 BufferModel => Str

  If set to multiplex, use multiplex buffer model for accurate
interleaving. Setting to bufferModel to none can lead to lower latency,
but low-memory devices may not be able to play back the stream without
interruptions.


=head2 CcDescriptor => Str

  When set to enabled, generates captionServiceDescriptor in PMT.


=head2 DvbNitSettings => L<Paws::MediaLive::DvbNitSettings>

  Inserts DVB Network Information Table (NIT) at the specified table
repetition interval.


=head2 DvbSdtSettings => L<Paws::MediaLive::DvbSdtSettings>

  Inserts DVB Service Description Table (SDT) at the specified table
repetition interval.


=head2 DvbSubPids => Str

  Packet Identifier (PID) for input source DVB Subtitle data to this
output. Multiple values are accepted, and can be entered in ranges
and/or by comma separation. Can be entered as decimal or hexadecimal
values. Each PID specified must be in the range of 32 (or 0x20)..8182
(or 0x1ff6).


=head2 DvbTdtSettings => L<Paws::MediaLive::DvbTdtSettings>

  Inserts DVB Time and Date Table (TDT) at the specified table repetition
interval.


=head2 DvbTeletextPid => Str

  Packet Identifier (PID) for input source DVB Teletext data to this
output. Can be entered as a decimal or hexadecimal value. Valid values
are 32 (or 0x20)..8182 (or 0x1ff6).


=head2 Ebif => Str

  If set to passthrough, passes any EBIF data from the input source to
this output.


=head2 EbpAudioInterval => Str

  When videoAndFixedIntervals is selected, audio EBP markers will be
added to partitions 3 and 4. The interval between these additional
markers will be fixed, and will be slightly shorter than the video EBP
marker interval. Only available when EBP Cablelabs segmentation markers
are selected. Partitions 1 and 2 will always follow the video interval.


=head2 EbpLookaheadMs => Int

  When set, enforces that Encoder Boundary Points do not come within the
specified time interval of each other by looking ahead at input video.
If another EBP is going to come in within the specified time interval,
the current EBP is not emitted, and the segment is "stretched" to the
next marker. The lookahead value does not add latency to the system.
The Live Event must be configured elsewhere to create sufficient
latency to make the lookahead accurate.


=head2 EbpPlacement => Str

  Controls placement of EBP on Audio PIDs. If set to videoAndAudioPids,
EBP markers will be placed on the video PID and all audio PIDs. If set
to videoPid, EBP markers will be placed on only the video PID.


=head2 EcmPid => Str

  This field is unused and deprecated.


=head2 EsRateInPes => Str

  Include or exclude the ES Rate field in the PES header.


=head2 EtvPlatformPid => Str

  Packet Identifier (PID) for input source ETV Platform data to this
output. Can be entered as a decimal or hexadecimal value. Valid values
are 32 (or 0x20)..8182 (or 0x1ff6).


=head2 EtvSignalPid => Str

  Packet Identifier (PID) for input source ETV Signal data to this
output. Can be entered as a decimal or hexadecimal value. Valid values
are 32 (or 0x20)..8182 (or 0x1ff6).


=head2 FragmentTime => Num

  The length in seconds of each fragment. Only used with EBP markers.


=head2 Klv => Str

  If set to passthrough, passes any KLV data from the input source to
this output.


=head2 KlvDataPids => Str

  Packet Identifier (PID) for input source KLV data to this output.
Multiple values are accepted, and can be entered in ranges and/or by
comma separation. Can be entered as decimal or hexadecimal values. Each
PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).


=head2 NullPacketBitrate => Num

  Value in bits per second of extra null packets to insert into the
transport stream. This can be used if a downstream encryption system
requires periodic null packets.


=head2 PatInterval => Int

  The number of milliseconds between instances of this table in the
output transport stream. Valid values are 0, 10..1000.


=head2 PcrControl => Str

  When set to pcrEveryPesPacket, a Program Clock Reference value is
inserted for every Packetized Elementary Stream (PES) header. This
parameter is effective only when the PCR PID is the same as the video
or audio elementary stream.


=head2 PcrPeriod => Int

  Maximum time in milliseconds between Program Clock Reference (PCRs)
inserted into the transport stream.


=head2 PcrPid => Str

  Packet Identifier (PID) of the Program Clock Reference (PCR) in the
transport stream. When no value is given, the encoder will assign the
same value as the Video PID. Can be entered as a decimal or hexadecimal
value. Valid values are 32 (or 0x20)..8182 (or 0x1ff6).


=head2 PmtInterval => Int

  The number of milliseconds between instances of this table in the
output transport stream. Valid values are 0, 10..1000.


=head2 PmtPid => Str

  Packet Identifier (PID) for the Program Map Table (PMT) in the
transport stream. Can be entered as a decimal or hexadecimal value.
Valid values are 32 (or 0x20)..8182 (or 0x1ff6).


=head2 ProgramNum => Int

  The value of the program number field in the Program Map Table.


=head2 RateMode => Str

  When vbr, does not insert null packets into transport stream to fill
specified bitrate. The bitrate setting acts as the maximum bitrate when
vbr is set.


=head2 Scte27Pids => Str

  Packet Identifier (PID) for input source SCTE-27 data to this output.
Multiple values are accepted, and can be entered in ranges and/or by
comma separation. Can be entered as decimal or hexadecimal values. Each
PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).


=head2 Scte35Control => Str

  Optionally pass SCTE-35 signals from the input source to this output.


=head2 Scte35Pid => Str

  Packet Identifier (PID) of the SCTE-35 stream in the transport stream.
Can be entered as a decimal or hexadecimal value. Valid values are 32
(or 0x20)..8182 (or 0x1ff6).


=head2 SegmentationMarkers => Str

  Inserts segmentation markers at each segmentationTime period.
raiSegstart sets the Random Access Indicator bit in the adaptation
field. raiAdapt sets the RAI bit and adds the current timecode in the
private data bytes. psiSegstart inserts PAT and PMT tables at the start
of segments. ebp adds Encoder Boundary Point information to the
adaptation field as per OpenCable specification OC-SP-EBP-I01-130118.
ebpLegacy adds Encoder Boundary Point information to the adaptation
field using a legacy proprietary format.


=head2 SegmentationStyle => Str

  The segmentation style parameter controls how segmentation markers are
inserted into the transport stream. With avails, it is possible that
segments may be truncated, which can influence where future
segmentation markers are inserted. When a segmentation style of
"resetCadence" is selected and a segment is truncated due to an avail,
we will reset the segmentation cadence. This means the subsequent
segment will have a duration of $segmentationTime seconds. When a
segmentation style of "maintainCadence" is selected and a segment is
truncated due to an avail, we will not reset the segmentation cadence.
This means the subsequent segment will likely be truncated as well.
However, all segments after that will have a duration of
$segmentationTime seconds. Note that EBP lookahead is a slight
exception to this rule.


=head2 SegmentationTime => Num

  The length in seconds of each segment. Required unless markers is set
to None_.


=head2 TimedMetadataBehavior => Str

  When set to passthrough, timed metadata will be passed through from
input to output.


=head2 TimedMetadataPid => Str

  Packet Identifier (PID) of the timed metadata stream in the transport
stream. Can be entered as a decimal or hexadecimal value. Valid values
are 32 (or 0x20)..8182 (or 0x1ff6).


=head2 TransportStreamId => Int

  The value of the transport stream ID field in the Program Map Table.


=head2 VideoPid => Str

  Packet Identifier (PID) of the elementary video stream in the transport
stream. Can be entered as a decimal or hexadecimal value. Valid values
are 32 (or 0x20)..8182 (or 0x1ff6).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

