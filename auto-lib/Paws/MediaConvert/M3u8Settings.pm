package Paws::MediaConvert::M3u8Settings;
  use Moose;
  has AudioFramesPerPes => (is => 'ro', isa => 'Int', request_name => 'audioFramesPerPes', traits => ['NameInRequest']);
  has AudioPids => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'audioPids', traits => ['NameInRequest']);
  has NielsenId3 => (is => 'ro', isa => 'Str', request_name => 'nielsenId3', traits => ['NameInRequest']);
  has PatInterval => (is => 'ro', isa => 'Int', request_name => 'patInterval', traits => ['NameInRequest']);
  has PcrControl => (is => 'ro', isa => 'Str', request_name => 'pcrControl', traits => ['NameInRequest']);
  has PcrPid => (is => 'ro', isa => 'Int', request_name => 'pcrPid', traits => ['NameInRequest']);
  has PmtInterval => (is => 'ro', isa => 'Int', request_name => 'pmtInterval', traits => ['NameInRequest']);
  has PmtPid => (is => 'ro', isa => 'Int', request_name => 'pmtPid', traits => ['NameInRequest']);
  has PrivateMetadataPid => (is => 'ro', isa => 'Int', request_name => 'privateMetadataPid', traits => ['NameInRequest']);
  has ProgramNumber => (is => 'ro', isa => 'Int', request_name => 'programNumber', traits => ['NameInRequest']);
  has Scte35Pid => (is => 'ro', isa => 'Int', request_name => 'scte35Pid', traits => ['NameInRequest']);
  has Scte35Source => (is => 'ro', isa => 'Str', request_name => 'scte35Source', traits => ['NameInRequest']);
  has TimedMetadata => (is => 'ro', isa => 'Str', request_name => 'timedMetadata', traits => ['NameInRequest']);
  has TimedMetadataPid => (is => 'ro', isa => 'Int', request_name => 'timedMetadataPid', traits => ['NameInRequest']);
  has TransportStreamId => (is => 'ro', isa => 'Int', request_name => 'transportStreamId', traits => ['NameInRequest']);
  has VideoPid => (is => 'ro', isa => 'Int', request_name => 'videoPid', traits => ['NameInRequest']);
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


=head2 Scte35Pid => Int

  Packet Identifier (PID) of the SCTE-35 stream in the transport stream.


=head2 Scte35Source => Str

  


=head2 TimedMetadata => Str

  


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

