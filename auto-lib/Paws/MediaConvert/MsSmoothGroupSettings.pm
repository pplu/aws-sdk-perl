# Generated from default/object.tt
package Paws::MediaConvert::MsSmoothGroupSettings;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaConvert::Types qw/MediaConvert_DestinationSettings MediaConvert_MsSmoothEncryptionSettings/;
  has AudioDeduplication => (is => 'ro', isa => Str);
  has Destination => (is => 'ro', isa => Str);
  has DestinationSettings => (is => 'ro', isa => MediaConvert_DestinationSettings);
  has Encryption => (is => 'ro', isa => MediaConvert_MsSmoothEncryptionSettings);
  has FragmentLength => (is => 'ro', isa => Int);
  has ManifestEncoding => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DestinationSettings' => {
                                          'class' => 'Paws::MediaConvert::DestinationSettings',
                                          'type' => 'MediaConvert_DestinationSettings'
                                        },
               'AudioDeduplication' => {
                                         'type' => 'Str'
                                       },
               'Encryption' => {
                                 'class' => 'Paws::MediaConvert::MsSmoothEncryptionSettings',
                                 'type' => 'MediaConvert_MsSmoothEncryptionSettings'
                               },
               'ManifestEncoding' => {
                                       'type' => 'Str'
                                     },
               'Destination' => {
                                  'type' => 'Str'
                                },
               'FragmentLength' => {
                                     'type' => 'Int'
                                   }
             },
  'NameInRequest' => {
                       'DestinationSettings' => 'destinationSettings',
                       'AudioDeduplication' => 'audioDeduplication',
                       'Encryption' => 'encryption',
                       'ManifestEncoding' => 'manifestEncoding',
                       'Destination' => 'destination',
                       'FragmentLength' => 'fragmentLength'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::MsSmoothGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::MsSmoothGroupSettings object:

  $service_obj->Method(Att1 => { AudioDeduplication => $value, ..., ManifestEncoding => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::MsSmoothGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioDeduplication

=head1 DESCRIPTION

Required when you set (Type) under
(OutputGroups)E<gt>(OutputGroupSettings) to MS_SMOOTH_GROUP_SETTINGS.

=head1 ATTRIBUTES


=head2 AudioDeduplication => Str

  COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings
across a Microsoft Smooth output group into a single audio stream.


=head2 Destination => Str

  Use Destination (Destination) to specify the S3 output location and the
output filename base. Destination accepts format identifiers. If you do
not specify the base filename in the URI, the service will use the
filename of the input file. If your job has multiple inputs, the
service uses the filename of the first input file.


=head2 DestinationSettings => MediaConvert_DestinationSettings

  Settings associated with the destination. Will vary based on the type
of destination


=head2 Encryption => MediaConvert_MsSmoothEncryptionSettings

  If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to
specify the value SpekeKeyProvider.


=head2 FragmentLength => Int

  Use Fragment length (FragmentLength) to specify the mp4 fragment sizes
in seconds. Fragment length must be compatible with GOP size and frame
rate.


=head2 ManifestEncoding => Str

  Use Manifest encoding (MsSmoothManifestEncoding) to specify the
encoding format for the server and client manifest. Valid options are
utf8 and utf16.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

