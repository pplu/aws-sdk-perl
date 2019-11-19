# Generated from default/object.tt
package Paws::MediaConvert::M2tsSettings;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Num/;
  use Paws::MediaConvert::Types qw/MediaConvert_M2tsScte35Esam MediaConvert_DvbSdtSettings MediaConvert_DvbNitSettings MediaConvert_DvbTdtSettings/;
  has AudioBufferModel => (is => 'ro', isa => Str);
  has AudioFramesPerPes => (is => 'ro', isa => Int);
  has AudioPids => (is => 'ro', isa => ArrayRef[Int]);
  has Bitrate => (is => 'ro', isa => Int);
  has BufferModel => (is => 'ro', isa => Str);
  has DvbNitSettings => (is => 'ro', isa => MediaConvert_DvbNitSettings);
  has DvbSdtSettings => (is => 'ro', isa => MediaConvert_DvbSdtSettings);
  has DvbSubPids => (is => 'ro', isa => ArrayRef[Int]);
  has DvbTdtSettings => (is => 'ro', isa => MediaConvert_DvbTdtSettings);
  has DvbTeletextPid => (is => 'ro', isa => Int);
  has EbpAudioInterval => (is => 'ro', isa => Str);
  has EbpPlacement => (is => 'ro', isa => Str);
  has EsRateInPes => (is => 'ro', isa => Str);
  has ForceTsVideoEbpOrder => (is => 'ro', isa => Str);
  has FragmentTime => (is => 'ro', isa => Num);
  has MaxPcrInterval => (is => 'ro', isa => Int);
  has MinEbpInterval => (is => 'ro', isa => Int);
  has NielsenId3 => (is => 'ro', isa => Str);
  has NullPacketBitrate => (is => 'ro', isa => Num);
  has PatInterval => (is => 'ro', isa => Int);
  has PcrControl => (is => 'ro', isa => Str);
  has PcrPid => (is => 'ro', isa => Int);
  has PmtInterval => (is => 'ro', isa => Int);
  has PmtPid => (is => 'ro', isa => Int);
  has PrivateMetadataPid => (is => 'ro', isa => Int);
  has ProgramNumber => (is => 'ro', isa => Int);
  has RateMode => (is => 'ro', isa => Str);
  has Scte35Esam => (is => 'ro', isa => MediaConvert_M2tsScte35Esam);
  has Scte35Pid => (is => 'ro', isa => Int);
  has Scte35Source => (is => 'ro', isa => Str);
  has SegmentationMarkers => (is => 'ro', isa => Str);
  has SegmentationStyle => (is => 'ro', isa => Str);
  has SegmentationTime => (is => 'ro', isa => Num);
  has TimedMetadataPid => (is => 'ro', isa => Int);
  has TransportStreamId => (is => 'ro', isa => Int);
  has VideoPid => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DvbTdtSettings' => 'dvbTdtSettings',
                       'SegmentationTime' => 'segmentationTime',
                       'AudioPids' => 'audioPids',
                       'EbpPlacement' => 'ebpPlacement',
                       'PcrControl' => 'pcrControl',
                       'BufferModel' => 'bufferModel',
                       'DvbSubPids' => 'dvbSubPids',
                       'Scte35Esam' => 'scte35Esam',
                       'PcrPid' => 'pcrPid',
                       'AudioFramesPerPes' => 'audioFramesPerPes',
                       'PatInterval' => 'patInterval',
                       'PmtInterval' => 'pmtInterval',
                       'Scte35Pid' => 'scte35Pid',
                       'VideoPid' => 'videoPid',
                       'MinEbpInterval' => 'minEbpInterval',
                       'PrivateMetadataPid' => 'privateMetadataPid',
                       'PmtPid' => 'pmtPid',
                       'EsRateInPes' => 'esRateInPes',
                       'TimedMetadataPid' => 'timedMetadataPid',
                       'MaxPcrInterval' => 'maxPcrInterval',
                       'DvbNitSettings' => 'dvbNitSettings',
                       'Scte35Source' => 'scte35Source',
                       'ProgramNumber' => 'programNumber',
                       'NielsenId3' => 'nielsenId3',
                       'TransportStreamId' => 'transportStreamId',
                       'Bitrate' => 'bitrate',
                       'AudioBufferModel' => 'audioBufferModel',
                       'EbpAudioInterval' => 'ebpAudioInterval',
                       'NullPacketBitrate' => 'nullPacketBitrate',
                       'FragmentTime' => 'fragmentTime',
                       'RateMode' => 'rateMode',
                       'SegmentationStyle' => 'segmentationStyle',
                       'DvbTeletextPid' => 'dvbTeletextPid',
                       'DvbSdtSettings' => 'dvbSdtSettings',
                       'SegmentationMarkers' => 'segmentationMarkers',
                       'ForceTsVideoEbpOrder' => 'forceTsVideoEbpOrder'
                     },
  'types' => {
               'PmtInterval' => {
                                  'type' => 'Int'
                                },
               'PatInterval' => {
                                  'type' => 'Int'
                                },
               'AudioFramesPerPes' => {
                                        'type' => 'Int'
                                      },
               'Scte35Esam' => {
                                 'type' => 'MediaConvert_M2tsScte35Esam',
                                 'class' => 'Paws::MediaConvert::M2tsScte35Esam'
                               },
               'PcrPid' => {
                             'type' => 'Int'
                           },
               'DvbSubPids' => {
                                 'type' => 'ArrayRef[Int]'
                               },
               'PcrControl' => {
                                 'type' => 'Str'
                               },
               'BufferModel' => {
                                  'type' => 'Str'
                                },
               'EbpPlacement' => {
                                   'type' => 'Str'
                                 },
               'AudioPids' => {
                                'type' => 'ArrayRef[Int]'
                              },
               'DvbTdtSettings' => {
                                     'class' => 'Paws::MediaConvert::DvbTdtSettings',
                                     'type' => 'MediaConvert_DvbTdtSettings'
                                   },
               'SegmentationTime' => {
                                       'type' => 'Num'
                                     },
               'TimedMetadataPid' => {
                                       'type' => 'Int'
                                     },
               'EsRateInPes' => {
                                  'type' => 'Str'
                                },
               'PmtPid' => {
                             'type' => 'Int'
                           },
               'PrivateMetadataPid' => {
                                         'type' => 'Int'
                                       },
               'MinEbpInterval' => {
                                     'type' => 'Int'
                                   },
               'Scte35Pid' => {
                                'type' => 'Int'
                              },
               'VideoPid' => {
                               'type' => 'Int'
                             },
               'TransportStreamId' => {
                                        'type' => 'Int'
                                      },
               'ProgramNumber' => {
                                    'type' => 'Int'
                                  },
               'NielsenId3' => {
                                 'type' => 'Str'
                               },
               'Scte35Source' => {
                                   'type' => 'Str'
                                 },
               'DvbNitSettings' => {
                                     'type' => 'MediaConvert_DvbNitSettings',
                                     'class' => 'Paws::MediaConvert::DvbNitSettings'
                                   },
               'MaxPcrInterval' => {
                                     'type' => 'Int'
                                   },
               'ForceTsVideoEbpOrder' => {
                                           'type' => 'Str'
                                         },
               'SegmentationMarkers' => {
                                          'type' => 'Str'
                                        },
               'DvbSdtSettings' => {
                                     'class' => 'Paws::MediaConvert::DvbSdtSettings',
                                     'type' => 'MediaConvert_DvbSdtSettings'
                                   },
               'SegmentationStyle' => {
                                        'type' => 'Str'
                                      },
               'DvbTeletextPid' => {
                                     'type' => 'Int'
                                   },
               'RateMode' => {
                               'type' => 'Str'
                             },
               'FragmentTime' => {
                                   'type' => 'Num'
                                 },
               'NullPacketBitrate' => {
                                        'type' => 'Num'
                                      },
               'EbpAudioInterval' => {
                                       'type' => 'Str'
                                     },
               'AudioBufferModel' => {
                                       'type' => 'Str'
                                     },
               'Bitrate' => {
                              'type' => 'Int'
                            }
             }
}
;
    return $Params_map;
  }


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

MPEG-2 TS container settings. These apply to outputs in a File output
group when the output's container (ContainerType) is MPEG-2 Transport
Stream (M2TS). In these assets, data is organized by the program map
table (PMT). Each transport stream program contains subsets of data,
including audio, video, and metadata. Each of these subsets of data has
a numerical label called a packet identifier (PID). Each transport
stream program corresponds to one MediaConvert output. The PMT lists
the types of data in a program along with their PID. Downstream systems
and players use the program map table to look up the PID for each type
of data it accesses and then uses the PIDs to locate specific data
within the asset.

=head1 ATTRIBUTES


=head2 AudioBufferModel => Str

  Selects between the DVB and ATSC buffer models for Dolby Digital audio.


=head2 AudioFramesPerPes => Int

  The number of audio frames to insert for each PES packet.


=head2 AudioPids => ArrayRef[Int]

  Specify the packet identifiers (PIDs) for any elementary audio streams
you include in this output. Specify multiple PIDs as a JSON array.
Default is the range 482-492.


=head2 Bitrate => Int

  Specify the output bitrate of the transport stream in bits per second.
Setting to 0 lets the muxer automatically determine the appropriate
bitrate. Other common values are 3750000, 7500000, and 15000000.


=head2 BufferModel => Str

  Controls what buffer model to use for accurate interleaving. If set to
MULTIPLEX, use multiplex buffer model. If set to NONE, this can lead to
lower latency, but low-memory devices may not be able to play back the
stream without interruptions.


=head2 DvbNitSettings => MediaConvert_DvbNitSettings

  Inserts DVB Network Information Table (NIT) at the specified table
repetition interval.


=head2 DvbSdtSettings => MediaConvert_DvbSdtSettings

  Inserts DVB Service Description Table (NIT) at the specified table
repetition interval.


=head2 DvbSubPids => ArrayRef[Int]

  Specify the packet identifiers (PIDs) for DVB subtitle data included in
this output. Specify multiple PIDs as a JSON array. Default is the
range 460-479.


=head2 DvbTdtSettings => MediaConvert_DvbTdtSettings

  Inserts DVB Time and Date Table (TDT) at the specified table repetition
interval.


=head2 DvbTeletextPid => Int

  Specify the packet identifier (PID) for DVB teletext data you include
in this output. Default is 499.


=head2 EbpAudioInterval => Str

  When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added
to partitions 3 and 4. The interval between these additional markers
will be fixed, and will be slightly shorter than the video EBP marker
interval. When set to VIDEO_INTERVAL, these additional markers will not
be inserted. Only applicable when EBP segmentation markers are is
selected (segmentationMarkers is EBP or EBP_LEGACY).


=head2 EbpPlacement => Str

  Selects which PIDs to place EBP markers on. They can either be placed
only on the video PID, or on both the video PID and all audio PIDs.
Only applicable when EBP segmentation markers are is selected
(segmentationMarkers is EBP or EBP_LEGACY).


=head2 EsRateInPes => Str

  Controls whether to include the ES Rate field in the PES header.


=head2 ForceTsVideoEbpOrder => Str

  Keep the default value (DEFAULT) unless you know that your audio EBP
markers are incorrectly appearing before your video EBP markers. To
correct this problem, set this value to Force (FORCE).


=head2 FragmentTime => Num

  The length, in seconds, of each fragment. Only used with EBP markers.


=head2 MaxPcrInterval => Int

  Specify the maximum time, in milliseconds, between Program Clock
References (PCRs) inserted into the transport stream.


=head2 MinEbpInterval => Int

  When set, enforces that Encoder Boundary Points do not come within the
specified time interval of each other by looking ahead at input video.
If another EBP is going to come in within the specified time interval,
the current EBP is not emitted, and the segment is "stretched" to the
next marker. The lookahead value does not add latency to the system.
The Live Event must be configured elsewhere to create sufficient
latency to make the lookahead accurate.


=head2 NielsenId3 => Str

  If INSERT, Nielsen inaudible tones for media tracking will be detected
in the input audio and an equivalent ID3 tag will be inserted in the
output.


=head2 NullPacketBitrate => Num

  Value in bits per second of extra null packets to insert into the
transport stream. This can be used if a downstream encryption system
requires periodic null packets.


=head2 PatInterval => Int

  The number of milliseconds between instances of this table in the
output transport stream.


=head2 PcrControl => Str

  When set to PCR_EVERY_PES_PACKET, a Program Clock Reference value is
inserted for every Packetized Elementary Stream (PES) header. This is
effective only when the PCR PID is the same as the video or audio
elementary stream.


=head2 PcrPid => Int

  Specify the packet identifier (PID) for the program clock reference
(PCR) in this output. If you do not specify a value, the service will
use the value for Video PID (VideoPid).


=head2 PmtInterval => Int

  Specify the number of milliseconds between instances of the program map
table (PMT) in the output transport stream.


=head2 PmtPid => Int

  Specify the packet identifier (PID) for the program map table (PMT)
itself. Default is 480.


=head2 PrivateMetadataPid => Int

  Specify the packet identifier (PID) of the private metadata stream.
Default is 503.


=head2 ProgramNumber => Int

  Use Program number (programNumber) to specify the program number used
in the program map table (PMT) for this output. Default is 1. Program
numbers and program map tables are parts of MPEG-2 transport stream
containers, used for organizing data.


=head2 RateMode => Str

  When set to CBR, inserts null packets into transport stream to fill
specified bitrate. When set to VBR, the bitrate setting acts as the
maximum bitrate, but the output will not be padded up to that bitrate.


=head2 Scte35Esam => MediaConvert_M2tsScte35Esam

  Include this in your job settings to put SCTE-35 markers in your HLS
and transport stream outputs at the insertion points that you specify
in an ESAM XML document. Provide the document in the setting SCC XML
(sccXml).


=head2 Scte35Pid => Int

  Specify the packet identifier (PID) of the SCTE-35 stream in the
transport stream.


=head2 Scte35Source => Str

  For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH)
if you want SCTE-35 markers that appear in your input to also appear in
this output. Choose None (NONE) if you don't want SCTE-35 markers in
this output. For SCTE-35 markers from an ESAM XML document-- Choose
None (NONE). Also provide the ESAM XML as a string in the setting
Signal processing notification XML (sccXml). Also enable ESAM SCTE-35
(include the property scte35Esam).


=head2 SegmentationMarkers => Str

  Inserts segmentation markers at each segmentation_time period.
rai_segstart sets the Random Access Indicator bit in the adaptation
field. rai_adapt sets the RAI bit and adds the current timecode in the
private data bytes. psi_segstart inserts PAT and PMT tables at the
start of segments. ebp adds Encoder Boundary Point information to the
adaptation field as per OpenCable specification OC-SP-EBP-I01-130118.
ebp_legacy adds Encoder Boundary Point information to the adaptation
field using a legacy proprietary format.


=head2 SegmentationStyle => Str

  The segmentation style parameter controls how segmentation markers are
inserted into the transport stream. With avails, it is possible that
segments may be truncated, which can influence where future
segmentation markers are inserted. When a segmentation style of
"reset_cadence" is selected and a segment is truncated due to an avail,
we will reset the segmentation cadence. This means the subsequent
segment will have a duration of of $segmentation_time seconds. When a
segmentation style of "maintain_cadence" is selected and a segment is
truncated due to an avail, we will not reset the segmentation cadence.
This means the subsequent segment will likely be truncated as well.
However, all segments after that will have a duration of
$segmentation_time seconds. Note that EBP lookahead is a slight
exception to this rule.


=head2 SegmentationTime => Num

  Specify the length, in seconds, of each segment. Required unless
markers is set to _none_.


=head2 TimedMetadataPid => Int

  Specify the packet identifier (PID) for timed metadata in this output.
Default is 502.


=head2 TransportStreamId => Int

  Specify the ID for the transport stream itself in the program map table
for this output. Transport stream IDs and program map tables are parts
of MPEG-2 transport stream containers, used for organizing data.


=head2 VideoPid => Int

  Specify the packet identifier (PID) of the elementary video stream in
the transport stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

