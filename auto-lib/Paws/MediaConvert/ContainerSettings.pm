# Generated from default/object.tt
package Paws::MediaConvert::ContainerSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw/MediaConvert_M3u8Settings MediaConvert_MovSettings MediaConvert_M2tsSettings MediaConvert_F4vSettings MediaConvert_Mp4Settings/;
  has Container => (is => 'ro', isa => Str);
  has F4vSettings => (is => 'ro', isa => MediaConvert_F4vSettings);
  has M2tsSettings => (is => 'ro', isa => MediaConvert_M2tsSettings);
  has M3u8Settings => (is => 'ro', isa => MediaConvert_M3u8Settings);
  has MovSettings => (is => 'ro', isa => MediaConvert_MovSettings);
  has Mp4Settings => (is => 'ro', isa => MediaConvert_Mp4Settings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'M3u8Settings' => {
                                   'class' => 'Paws::MediaConvert::M3u8Settings',
                                   'type' => 'MediaConvert_M3u8Settings'
                                 },
               'M2tsSettings' => {
                                   'class' => 'Paws::MediaConvert::M2tsSettings',
                                   'type' => 'MediaConvert_M2tsSettings'
                                 },
               'F4vSettings' => {
                                  'class' => 'Paws::MediaConvert::F4vSettings',
                                  'type' => 'MediaConvert_F4vSettings'
                                },
               'MovSettings' => {
                                  'class' => 'Paws::MediaConvert::MovSettings',
                                  'type' => 'MediaConvert_MovSettings'
                                },
               'Container' => {
                                'type' => 'Str'
                              },
               'Mp4Settings' => {
                                  'class' => 'Paws::MediaConvert::Mp4Settings',
                                  'type' => 'MediaConvert_Mp4Settings'
                                }
             },
  'NameInRequest' => {
                       'M3u8Settings' => 'm3u8Settings',
                       'M2tsSettings' => 'm2tsSettings',
                       'F4vSettings' => 'f4vSettings',
                       'MovSettings' => 'movSettings',
                       'Container' => 'container',
                       'Mp4Settings' => 'mp4Settings'
                     }
}
;
    return $Params_map;
  }


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

  $service_obj->Method(Att1 => { Container => $value, ..., Mp4Settings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::ContainerSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Container

=head1 DESCRIPTION

Container specific settings.

=head1 ATTRIBUTES


=head2 Container => Str

  Container for this output. Some containers require a container settings
object. If not specified, the default object will be created.


=head2 F4vSettings => MediaConvert_F4vSettings

  Settings for F4v container


=head2 M2tsSettings => MediaConvert_M2tsSettings

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


=head2 M3u8Settings => MediaConvert_M3u8Settings

  Settings for TS segments in HLS


=head2 MovSettings => MediaConvert_MovSettings

  Settings for MOV Container.


=head2 Mp4Settings => MediaConvert_Mp4Settings

  Settings for MP4 container. You can create audio-only AAC outputs with
this container.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

