package Paws::MediaConvert::ContainerSettings;
  use Moose;
  has CmfcSettings => (is => 'ro', isa => 'Paws::MediaConvert::CmfcSettings', request_name => 'cmfcSettings', traits => ['NameInRequest']);
  has Container => (is => 'ro', isa => 'Str', request_name => 'container', traits => ['NameInRequest']);
  has F4vSettings => (is => 'ro', isa => 'Paws::MediaConvert::F4vSettings', request_name => 'f4vSettings', traits => ['NameInRequest']);
  has M2tsSettings => (is => 'ro', isa => 'Paws::MediaConvert::M2tsSettings', request_name => 'm2tsSettings', traits => ['NameInRequest']);
  has M3u8Settings => (is => 'ro', isa => 'Paws::MediaConvert::M3u8Settings', request_name => 'm3u8Settings', traits => ['NameInRequest']);
  has MovSettings => (is => 'ro', isa => 'Paws::MediaConvert::MovSettings', request_name => 'movSettings', traits => ['NameInRequest']);
  has Mp4Settings => (is => 'ro', isa => 'Paws::MediaConvert::Mp4Settings', request_name => 'mp4Settings', traits => ['NameInRequest']);
  has MpdSettings => (is => 'ro', isa => 'Paws::MediaConvert::MpdSettings', request_name => 'mpdSettings', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ContainerSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::ContainerSettings object:

  $service_obj->Method(Att1 => { CmfcSettings => $value, ..., MpdSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::ContainerSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->CmfcSettings

=head1 DESCRIPTION

Container specific settings.

=head1 ATTRIBUTES


=head2 CmfcSettings => L<Paws::MediaConvert::CmfcSettings>

  Settings for MP4 segments in CMAF


=head2 Container => Str

  Container for this output. Some containers require a container settings
object. If not specified, the default object will be created.


=head2 F4vSettings => L<Paws::MediaConvert::F4vSettings>

  Settings for F4v container


=head2 M2tsSettings => L<Paws::MediaConvert::M2tsSettings>

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


=head2 M3u8Settings => L<Paws::MediaConvert::M3u8Settings>

  Settings for TS segments in HLS


=head2 MovSettings => L<Paws::MediaConvert::MovSettings>

  Settings for MOV Container.


=head2 Mp4Settings => L<Paws::MediaConvert::Mp4Settings>

  Settings for MP4 container. You can create audio-only AAC outputs with
this container.


=head2 MpdSettings => L<Paws::MediaConvert::MpdSettings>

  Settings for MP4 segments in DASH



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

