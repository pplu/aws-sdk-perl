package Paws::MediaLive::NetworkInputSettings;
  use Moose;
  has HlsInputSettings => (is => 'ro', isa => 'Paws::MediaLive::HlsInputSettings', request_name => 'hlsInputSettings', traits => ['NameInRequest']);
  has ServerValidation => (is => 'ro', isa => 'Str', request_name => 'serverValidation', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::NetworkInputSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::NetworkInputSettings object:

  $service_obj->Method(Att1 => { HlsInputSettings => $value, ..., ServerValidation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::NetworkInputSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->HlsInputSettings

=head1 DESCRIPTION

Network source to transcode. Must be accessible to the Elemental Live
node that is running the live event through a network connection.

=head1 ATTRIBUTES


=head2 HlsInputSettings => L<Paws::MediaLive::HlsInputSettings>

  Specifies HLS input settings when the uri is for a HLS manifest.


=head2 ServerValidation => Str

  Check HTTPS server certificates. When set to checkCryptographyOnly,
cryptography in the certificate will be checked, but not the server's
name. Certain subdomains (notably S3 buckets that use dots in the
bucket name) do not strictly match the corresponding certificate's
wildcard pattern and would otherwise cause the event to error. This
setting is ignored for protocols that do not use https.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

