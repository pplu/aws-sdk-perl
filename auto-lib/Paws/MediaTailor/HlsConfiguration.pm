package Paws::MediaTailor::HlsConfiguration;
  use Moose;
  has ManifestEndpointPrefix => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::HlsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaTailor::HlsConfiguration object:

  $service_obj->Method(Att1 => { ManifestEndpointPrefix => $value, ..., ManifestEndpointPrefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaTailor::HlsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ManifestEndpointPrefix

=head1 DESCRIPTION

The configuration for HLS content.

=head1 ATTRIBUTES


=head2 ManifestEndpointPrefix => Str

  The URL that is used to initiate a playback session for devices that
support Apple HLS. The session uses server-side reporting.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

