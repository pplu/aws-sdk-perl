# Generated from default/object.tt
package Paws::MediaPackage::MssPackage;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::MediaPackage::Types qw/MediaPackage_MssEncryption MediaPackage_StreamSelection/;
  has Encryption => (is => 'ro', isa => MediaPackage_MssEncryption);
  has ManifestWindowSeconds => (is => 'ro', isa => Int);
  has SegmentDurationSeconds => (is => 'ro', isa => Int);
  has StreamSelection => (is => 'ro', isa => MediaPackage_StreamSelection);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SegmentDurationSeconds' => {
                                             'type' => 'Int'
                                           },
               'StreamSelection' => {
                                      'class' => 'Paws::MediaPackage::StreamSelection',
                                      'type' => 'MediaPackage_StreamSelection'
                                    },
               'Encryption' => {
                                 'type' => 'MediaPackage_MssEncryption',
                                 'class' => 'Paws::MediaPackage::MssEncryption'
                               },
               'ManifestWindowSeconds' => {
                                            'type' => 'Int'
                                          }
             },
  'NameInRequest' => {
                       'ManifestWindowSeconds' => 'manifestWindowSeconds',
                       'Encryption' => 'encryption',
                       'SegmentDurationSeconds' => 'segmentDurationSeconds',
                       'StreamSelection' => 'streamSelection'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::MssPackage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::MssPackage object:

  $service_obj->Method(Att1 => { Encryption => $value, ..., StreamSelection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::MssPackage object:

  $result = $service_obj->Method(...);
  $result->Att1->Encryption

=head1 DESCRIPTION

A Microsoft Smooth Streaming (MSS) packaging configuration.

=head1 ATTRIBUTES


=head2 Encryption => MediaPackage_MssEncryption

  


=head2 ManifestWindowSeconds => Int

  The time window (in seconds) contained in each manifest.


=head2 SegmentDurationSeconds => Int

  The duration (in seconds) of each segment.


=head2 StreamSelection => MediaPackage_StreamSelection

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

