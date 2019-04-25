package Paws::MediaTailor::DashConfiguration;
  use Moose;
  has ManifestEndpointPrefix => (is => 'ro', isa => 'Str');
  has MpdLocation => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::DashConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaTailor::DashConfiguration object:

  $service_obj->Method(Att1 => { ManifestEndpointPrefix => $value, ..., MpdLocation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaTailor::DashConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ManifestEndpointPrefix

=head1 DESCRIPTION

The configuration object for DASH content.

=head1 ATTRIBUTES


=head2 ManifestEndpointPrefix => Str

  The URL that is used to initiate a playback session for devices that
support DASH.


=head2 MpdLocation => Str

  The setting that controls whether MediaTailor includes the Location tag
in DASH Manifests. MediaTailor populates the Location tag with the URL
for manifest update requests, to be used by players that don't support
sticky redirects. Disable this if you have CDN routing rules set up for
accessing MediaTailor manifests and you are either using client-side
reporting or your players support sticky HTTP redirects. Valid values
are DISABLED and EMT_DEFAULT. The EMT_DEFAULT setting enables the
inclusion of the tag and is the default value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

