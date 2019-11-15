package Paws::MediaConvert::SpekeKeyProviderCmaf;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', request_name => 'certificateArn', traits => ['NameInRequest']);
  has DashSignaledSystemIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'dashSignaledSystemIds', traits => ['NameInRequest']);
  has HlsSignaledSystemIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'hlsSignaledSystemIds', traits => ['NameInRequest']);
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::SpekeKeyProviderCmaf

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::SpekeKeyProviderCmaf object:

  $service_obj->Method(Att1 => { CertificateArn => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::SpekeKeyProviderCmaf object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateArn

=head1 DESCRIPTION

If your output group type is CMAF, use these settings when doing DRM
encryption with a SPEKE-compliant key provider. If your output group
type is HLS, DASH, or Microsoft Smooth, use the SpekeKeyProvider
settings instead.

=head1 ATTRIBUTES


=head2 CertificateArn => Str

  If you want your key provider to encrypt the content keys that it
provides to MediaConvert, set up a certificate with a master key using
AWS Certificate Manager. Specify the certificate's Amazon Resource Name
(ARN) here.


=head2 DashSignaledSystemIds => ArrayRef[Str|Undef]

  Specify the DRM system IDs that you want signaled in the DASH manifest
that MediaConvert creates as part of this CMAF package. The DASH
manifest can currently signal up to three system IDs. For more
information, see https://dashif.org/identifiers/content_protection/.


=head2 HlsSignaledSystemIds => ArrayRef[Str|Undef]

  Specify the DRM system ID that you want signaled in the HLS manifest
that MediaConvert creates as part of this CMAF package. The HLS
manifest can currently signal only one system ID. For more information,
see https://dashif.org/identifiers/content_protection/.


=head2 ResourceId => Str

  Specify the resource ID that your SPEKE-compliant key provider uses to
identify this content.


=head2 Url => Str

  Specify the URL to the key server that your SPEKE-compliant DRM key
provider uses to provide keys for encrypting your content.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

