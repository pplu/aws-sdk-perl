# Generated from default/object.tt
package Paws::MediaConvert::M3u8Settings;
  use Moo;
  use Types::Standard qw/Int ArrayRef Str/;
  use Paws::MediaConvert::Types qw//;
  has AudioFramesPerPes => (is => 'ro', isa => Int);
  has AudioPids => (is => 'ro', isa => ArrayRef[Int]);
  has NielsenId3 => (is => 'ro', isa => Str);
  has PatInterval => (is => 'ro', isa => Int);
  has PcrControl => (is => 'ro', isa => Str);
  has PcrPid => (is => 'ro', isa => Int);
  has PmtInterval => (is => 'ro', isa => Int);
  has PmtPid => (is => 'ro', isa => Int);
  has PrivateMetadataPid => (is => 'ro', isa => Int);
  has ProgramNumber => (is => 'ro', isa => Int);
  has Scte35Pid => (is => 'ro', isa => Int);
  has Scte35Source => (is => 'ro', isa => Str);
  has TimedMetadata => (is => 'ro', isa => Str);
  has TimedMetadataPid => (is => 'ro', isa => Int);
  has TransportStreamId => (is => 'ro', isa => Int);
  has VideoPid => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AudioPids' => {
                                'type' => 'ArrayRef[Int]'
                              },
               'AudioFramesPerPes' => {
                                        'type' => 'Int'
                                      },
               'PcrPid' => {
                             'type' => 'Int'
                           },
               'Scte35Source' => {
                                   'type' => 'Str'
                                 },
               'NielsenId3' => {
                                 'type' => 'Str'
                               },
               'TransportStreamId' => {
                                        'type' => 'Int'
                                      },
               'Scte35Pid' => {
                                'type' => 'Int'
                              },
               'PrivateMetadataPid' => {
                                         'type' => 'Int'
                                       },
               'TimedMetadata' => {
                                    'type' => 'Str'
                                  },
               'PatInterval' => {
                                  'type' => 'Int'
                                },
               'PcrControl' => {
                                 'type' => 'Str'
                               },
               'PmtPid' => {
                             'type' => 'Int'
                           },
               'PmtInterval' => {
                                  'type' => 'Int'
                                },
               'TimedMetadataPid' => {
                                       'type' => 'Int'
                                     },
               'VideoPid' => {
                               'type' => 'Int'
                             },
               'ProgramNumber' => {
                                    'type' => 'Int'
                                  }
             },
  'NameInRequest' => {
                       'AudioPids' => 'audioPids',
                       'AudioFramesPerPes' => 'audioFramesPerPes',
                       'PcrPid' => 'pcrPid',
                       'Scte35Source' => 'scte35Source',
                       'NielsenId3' => 'nielsenId3',
                       'TransportStreamId' => 'transportStreamId',
                       'Scte35Pid' => 'scte35Pid',
                       'PrivateMetadataPid' => 'privateMetadataPid',
                       'TimedMetadata' => 'timedMetadata',
                       'PatInterval' => 'patInterval',
                       'PcrControl' => 'pcrControl',
                       'PmtPid' => 'pmtPid',
                       'PmtInterval' => 'pmtInterval',
                       'TimedMetadataPid' => 'timedMetadataPid',
                       'VideoPid' => 'videoPid',
                       'ProgramNumber' => 'programNumber'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::M3u8Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::M3u8Settings object:

  $service_obj->Method(Att1 => { AudioFramesPerPes => $value, ..., VideoPid => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::M3u8Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioFramesPerPes

=head1 DESCRIPTION

Settings for TS segments in HLS

=head1 ATTRIBUTES


=head2 AudioFramesPerPes => Int

  The number of audio frames to insert for each PES packet.


=head2 AudioPids => ArrayRef[Int]

  Packet Identifier (PID) of the elementary audio stream(s) in the
transport stream. Multiple values are accepted, and can be entered in
ranges and/or by comma separation.


=head2 NielsenId3 => Str

  If INSERT, Nielsen inaudible tones for media tracking will be detected
in the input audio and an equivalent ID3 tag will be inserted in the
output.


=head2 PatInterval => Int

  The number of milliseconds between instances of this table in the
output transport stream.


=head2 PcrControl => Str

  When set to PCR_EVERY_PES_PACKET a Program Clock Reference value is
inserted for every Packetized Elementary Stream (PES) header. This
parameter is effective only when the PCR PID is the same as the video
or audio elementary stream.


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


=head2 Scte35Pid => Int

  Packet Identifier (PID) of the SCTE-35 stream in the transport stream.


=head2 Scte35Source => Str

  For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH)
if you want SCTE-35 markers that appear in your input to also appear in
this output. Choose None (NONE) if you don't want SCTE-35 markers in
this output. For SCTE-35 markers from an ESAM XML document-- Choose
None (NONE) if you don't want manifest conditioning. Choose Passthrough
(PASSTHROUGH) and choose Ad markers (adMarkers) if you do want manifest
conditioning. In both cases, also provide the ESAM XML as a string in
the setting Signal processing notification XML (sccXml).


=head2 TimedMetadata => Str

  Applies only to HLS outputs. Use this setting to specify whether the
service inserts the ID3 timed metadata from the input in this output.


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

