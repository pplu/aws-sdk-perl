# Generated from default/object.tt
package Paws::MediaPackage::CmafPackage;
  use Moo;
  use Types::Standard qw/ArrayRef Int Str/;
  use Paws::MediaPackage::Types qw/MediaPackage_CmafEncryption MediaPackage_StreamSelection MediaPackage_HlsManifest/;
  has Encryption => (is => 'ro', isa => MediaPackage_CmafEncryption);
  has HlsManifests => (is => 'ro', isa => ArrayRef[MediaPackage_HlsManifest]);
  has SegmentDurationSeconds => (is => 'ro', isa => Int);
  has SegmentPrefix => (is => 'ro', isa => Str);
  has StreamSelection => (is => 'ro', isa => MediaPackage_StreamSelection);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Encryption' => {
                                 'type' => 'MediaPackage_CmafEncryption',
                                 'class' => 'Paws::MediaPackage::CmafEncryption'
                               },
               'HlsManifests' => {
                                   'class' => 'Paws::MediaPackage::HlsManifest',
                                   'type' => 'ArrayRef[MediaPackage_HlsManifest]'
                                 },
               'StreamSelection' => {
                                      'class' => 'Paws::MediaPackage::StreamSelection',
                                      'type' => 'MediaPackage_StreamSelection'
                                    },
               'SegmentDurationSeconds' => {
                                             'type' => 'Int'
                                           },
               'SegmentPrefix' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'SegmentPrefix' => 'segmentPrefix',
                       'SegmentDurationSeconds' => 'segmentDurationSeconds',
                       'StreamSelection' => 'streamSelection',
                       'HlsManifests' => 'hlsManifests',
                       'Encryption' => 'encryption'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::CmafPackage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::CmafPackage object:

  $service_obj->Method(Att1 => { Encryption => $value, ..., StreamSelection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::CmafPackage object:

  $result = $service_obj->Method(...);
  $result->Att1->Encryption

=head1 DESCRIPTION

A Common Media Application Format (CMAF) packaging configuration.

=head1 ATTRIBUTES


=head2 Encryption => MediaPackage_CmafEncryption

  


=head2 HlsManifests => ArrayRef[MediaPackage_HlsManifest]

  A list of HLS manifest configurations


=head2 SegmentDurationSeconds => Int

  Duration (in seconds) of each segment. Actual segments will be rounded
to the nearest multiple of the source segment duration.


=head2 SegmentPrefix => Str

  An optional custom string that is prepended to the name of each
segment. If not specified, it defaults to the ChannelId.


=head2 StreamSelection => MediaPackage_StreamSelection

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

