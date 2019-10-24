# Generated from default/object.tt
package Paws::MediaPackageVod::DashManifest;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaPackageVod::Types qw/MediaPackageVod_StreamSelection/;
  has ManifestName => (is => 'ro', isa => Str);
  has MinBufferTimeSeconds => (is => 'ro', isa => Int);
  has Profile => (is => 'ro', isa => Str);
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
                                 },
               'Profile' => {
                              'type' => 'Str'
                            },
               'MinBufferTimeSeconds' => {
                                           'type' => 'Int'
                                         }
             },
  'NameInRequest' => {
                       'StreamSelection' => 'streamSelection',
                       'ManifestName' => 'manifestName',
                       'Profile' => 'profile',
                       'MinBufferTimeSeconds' => 'minBufferTimeSeconds'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::DashManifest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::DashManifest object:

  $service_obj->Method(Att1 => { ManifestName => $value, ..., StreamSelection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::DashManifest object:

  $result = $service_obj->Method(...);
  $result->Att1->ManifestName

=head1 DESCRIPTION

A DASH manifest configuration.

=head1 ATTRIBUTES


=head2 ManifestName => Str

  An optional string to include in the name of the manifest.


=head2 MinBufferTimeSeconds => Int

  Minimum duration (in seconds) that a player will buffer media before
starting the presentation.


=head2 Profile => Str

  The Dynamic Adaptive Streaming over HTTP (DASH) profile type. When set
to "HBBTV_1_5", HbbTV 1.5 compliant output is enabled.


=head2 StreamSelection => MediaPackageVod_StreamSelection

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

