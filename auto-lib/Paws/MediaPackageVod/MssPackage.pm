# Generated from default/object.tt
package Paws::MediaPackageVod::MssPackage;
  use Moo;
  use Types::Standard qw/ArrayRef Int/;
  use Paws::MediaPackageVod::Types qw/MediaPackageVod_MssEncryption MediaPackageVod_MssManifest/;
  has Encryption => (is => 'ro', isa => MediaPackageVod_MssEncryption);
  has MssManifests => (is => 'ro', isa => ArrayRef[MediaPackageVod_MssManifest], required => 1);
  has SegmentDurationSeconds => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SegmentDurationSeconds' => {
                                             'type' => 'Int'
                                           },
               'Encryption' => {
                                 'class' => 'Paws::MediaPackageVod::MssEncryption',
                                 'type' => 'MediaPackageVod_MssEncryption'
                               },
               'MssManifests' => {
                                   'class' => 'Paws::MediaPackageVod::MssManifest',
                                   'type' => 'ArrayRef[MediaPackageVod_MssManifest]'
                                 }
             },
  'NameInRequest' => {
                       'SegmentDurationSeconds' => 'segmentDurationSeconds',
                       'Encryption' => 'encryption',
                       'MssManifests' => 'mssManifests'
                     },
  'IsRequired' => {
                    'MssManifests' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::MssPackage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::MssPackage object:

  $service_obj->Method(Att1 => { Encryption => $value, ..., SegmentDurationSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::MssPackage object:

  $result = $service_obj->Method(...);
  $result->Att1->Encryption

=head1 DESCRIPTION

A Microsoft Smooth Streaming (MSS) PackagingConfiguration.

=head1 ATTRIBUTES


=head2 Encryption => MediaPackageVod_MssEncryption

  


=head2 B<REQUIRED> MssManifests => ArrayRef[MediaPackageVod_MssManifest]

  A list of MSS manifest configurations.


=head2 SegmentDurationSeconds => Int

  The duration (in seconds) of each segment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

