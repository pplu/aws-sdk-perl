package Paws::MediaLive::M3u8Settings;
  use Moose;
  has AudioFramesPerPes => (is => 'ro', isa => 'Int', request_name => 'audioFramesPerPes', traits => ['NameInRequest']);
  has AudioPids => (is => 'ro', isa => 'Str', request_name => 'audioPids', traits => ['NameInRequest']);
  has EcmPid => (is => 'ro', isa => 'Str', request_name => 'ecmPid', traits => ['NameInRequest']);
  has PatInterval => (is => 'ro', isa => 'Int', request_name => 'patInterval', traits => ['NameInRequest']);
  has PcrControl => (is => 'ro', isa => 'Str', request_name => 'pcrControl', traits => ['NameInRequest']);
  has PcrPeriod => (is => 'ro', isa => 'Int', request_name => 'pcrPeriod', traits => ['NameInRequest']);
  has PcrPid => (is => 'ro', isa => 'Str', request_name => 'pcrPid', traits => ['NameInRequest']);
  has PmtInterval => (is => 'ro', isa => 'Int', request_name => 'pmtInterval', traits => ['NameInRequest']);
  has PmtPid => (is => 'ro', isa => 'Str', request_name => 'pmtPid', traits => ['NameInRequest']);
  has ProgramNum => (is => 'ro', isa => 'Int', request_name => 'programNum', traits => ['NameInRequest']);
  has Scte35Behavior => (is => 'ro', isa => 'Str', request_name => 'scte35Behavior', traits => ['NameInRequest']);
  has Scte35Pid => (is => 'ro', isa => 'Str', request_name => 'scte35Pid', traits => ['NameInRequest']);
  has TimedMetadataBehavior => (is => 'ro', isa => 'Str', request_name => 'timedMetadataBehavior', traits => ['NameInRequest']);
  has TimedMetadataPid => (is => 'ro', isa => 'Str', request_name => 'timedMetadataPid', traits => ['NameInRequest']);
  has TransportStreamId => (is => 'ro', isa => 'Int', request_name => 'transportStreamId', traits => ['NameInRequest']);
  has VideoPid => (is => 'ro', isa => 'Str', request_name => 'videoPid', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::M3u8Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::M3u8Settings object:

  $service_obj->Method(Att1 => { AudioFramesPerPes => $value, ..., VideoPid => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::M3u8Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioFramesPerPes

=head1 DESCRIPTION

Settings information for the .m3u8 container

=head1 ATTRIBUTES


=head2 AudioFramesPerPes => Int

  The number of audio frames to insert for each PES packet.


=head2 AudioPids => Str

  Packet Identifier (PID) of the elementary audio stream(s) in the
transport stream. Multiple values are accepted, and can be entered in
ranges and/or by comma separation. Can be entered as decimal or
hexadecimal values.


=head2 EcmPid => Str

  This parameter is unused and deprecated.


=head2 PatInterval => Int

  The number of milliseconds between instances of this table in the
output transport stream. A value of \"0\" writes out the PMT once per
segment file.


=head2 PcrControl => Str

  When set to pcrEveryPesPacket, a Program Clock Reference value is
inserted for every Packetized Elementary Stream (PES) header. This
parameter is effective only when the PCR PID is the same as the video
or audio elementary stream.


=head2 PcrPeriod => Int

  Maximum time in milliseconds between Program Clock References (PCRs)
inserted into the transport stream.


=head2 PcrPid => Str

  Packet Identifier (PID) of the Program Clock Reference (PCR) in the
transport stream. When no value is given, the encoder will assign the
same value as the Video PID. Can be entered as a decimal or hexadecimal
value.


=head2 PmtInterval => Int

  The number of milliseconds between instances of this table in the
output transport stream. A value of \"0\" writes out the PMT once per
segment file.


=head2 PmtPid => Str

  Packet Identifier (PID) for the Program Map Table (PMT) in the
transport stream. Can be entered as a decimal or hexadecimal value.


=head2 ProgramNum => Int

  The value of the program number field in the Program Map Table.


=head2 Scte35Behavior => Str

  If set to passthrough, passes any SCTE-35 signals from the input source
to this output.


=head2 Scte35Pid => Str

  Packet Identifier (PID) of the SCTE-35 stream in the transport stream.
Can be entered as a decimal or hexadecimal value.


=head2 TimedMetadataBehavior => Str

  When set to passthrough, timed metadata is passed through from input to
output.


=head2 TimedMetadataPid => Str

  Packet Identifier (PID) of the timed metadata stream in the transport
stream. Can be entered as a decimal or hexadecimal value. Valid values
are 32 (or 0x20)..8182 (or 0x1ff6).


=head2 TransportStreamId => Int

  The value of the transport stream ID field in the Program Map Table.


=head2 VideoPid => Str

  Packet Identifier (PID) of the elementary video stream in the transport
stream. Can be entered as a decimal or hexadecimal value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

