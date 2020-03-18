package Paws::MediaConvert::CmafEncryptionSettings;
  use Moose;
  has ConstantInitializationVector => (is => 'ro', isa => 'Str', request_name => 'constantInitializationVector', traits => ['NameInRequest']);
  has EncryptionMethod => (is => 'ro', isa => 'Str', request_name => 'encryptionMethod', traits => ['NameInRequest']);
  has InitializationVectorInManifest => (is => 'ro', isa => 'Str', request_name => 'initializationVectorInManifest', traits => ['NameInRequest']);
  has SpekeKeyProvider => (is => 'ro', isa => 'Paws::MediaConvert::SpekeKeyProviderCmaf', request_name => 'spekeKeyProvider', traits => ['NameInRequest']);
  has StaticKeyProvider => (is => 'ro', isa => 'Paws::MediaConvert::StaticKeyProvider', request_name => 'staticKeyProvider', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CmafEncryptionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::CmafEncryptionSettings object:

  $service_obj->Method(Att1 => { ConstantInitializationVector => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::CmafEncryptionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ConstantInitializationVector

=head1 DESCRIPTION

Settings for CMAF encryption

=head1 ATTRIBUTES


=head2 ConstantInitializationVector => Str

  This is a 128-bit, 16-byte hex value represented by a 32-character text
string. If this parameter is not set then the Initialization Vector
will follow the segment number by default.


=head2 EncryptionMethod => Str

  Specify the encryption scheme that you want the service to use when
encrypting your CMAF segments. Choose AES-CBC subsample (SAMPLE-AES) or
AES_CTR (AES-CTR).


=head2 InitializationVectorInManifest => Str

  When you use DRM with CMAF outputs, choose whether the service writes
the 128-bit encryption initialization vector in the HLS and DASH
manifests.


=head2 SpekeKeyProvider => L<Paws::MediaConvert::SpekeKeyProviderCmaf>

  If your output group type is CMAF, use these settings when doing DRM
encryption with a SPEKE-compliant key provider. If your output group
type is HLS, DASH, or Microsoft Smooth, use the SpekeKeyProvider
settings instead.


=head2 StaticKeyProvider => L<Paws::MediaConvert::StaticKeyProvider>

  Use these settings to set up encryption with a static key provider.


=head2 Type => Str

  Specify whether your DRM encryption key is static or from a key
provider that follows the SPEKE standard. For more information about
SPEKE, see
https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

