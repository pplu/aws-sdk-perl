# Generated from default/object.tt
package Paws::MediaPackageVod::MssManifest;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackageVod::Types qw/MediaPackageVod_StreamSelection/;
  has ManifestName => (is => 'ro', isa => Str);
  has StreamSelection => (is => 'ro', isa => MediaPackageVod_StreamSelection);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StreamSelection' => {
                                      'class' => 'Paws::MediaPackageVod::StreamSelection',
                                      'type' => 'MediaPackageVod_StreamSelection'
                                    },
               'ManifestName' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'StreamSelection' => 'streamSelection',
                       'ManifestName' => 'manifestName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::MssManifest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::MssManifest object:

  $service_obj->Method(Att1 => { ManifestName => $value, ..., StreamSelection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::MssManifest object:

  $result = $service_obj->Method(...);
  $result->Att1->ManifestName

=head1 DESCRIPTION

A Microsoft Smooth Streaming (MSS) manifest configuration.

=head1 ATTRIBUTES


=head2 ManifestName => Str

  An optional string to include in the name of the manifest.


=head2 StreamSelection => MediaPackageVod_StreamSelection

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

