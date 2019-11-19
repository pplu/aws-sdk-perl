# Generated from default/object.tt
package Paws::MediaConvert::SpekeKeyProvider;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::MediaConvert::Types qw//;
  has CertificateArn => (is => 'ro', isa => Str);
  has ResourceId => (is => 'ro', isa => Str);
  has SystemIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Url => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Url' => {
                          'type' => 'Str'
                        },
               'CertificateArn' => {
                                     'type' => 'Str'
                                   },
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'SystemIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              }
             },
  'NameInRequest' => {
                       'SystemIds' => 'systemIds',
                       'ResourceId' => 'resourceId',
                       'CertificateArn' => 'certificateArn',
                       'Url' => 'url'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::SpekeKeyProvider

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::SpekeKeyProvider object:

  $service_obj->Method(Att1 => { CertificateArn => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::SpekeKeyProvider object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateArn

=head1 DESCRIPTION

If your output group type is HLS, DASH, or Microsoft Smooth, use these
settings when doing DRM encryption with a SPEKE-compliant key provider.
If your output group type is CMAF, use the SpekeKeyProviderCmaf
settings instead.

=head1 ATTRIBUTES


=head2 CertificateArn => Str

  If you want your key provider to encrypt the content keys that it
provides to MediaConvert, set up a certificate with a master key using
AWS Certificate Manager. Specify the certificate's Amazon Resource Name
(ARN) here.


=head2 ResourceId => Str

  Specify the resource ID that your SPEKE-compliant key provider uses to
identify this content.


=head2 SystemIds => ArrayRef[Str|Undef]

  Relates to SPEKE implementation. DRM system identifiers. DASH output
groups support a max of two system ids. Other group types support one
system id. See https://dashif.org/identifiers/content_protection/ for
more details.


=head2 Url => Str

  Specify the URL to the key server that your SPEKE-compliant DRM key
provider uses to provide keys for encrypting your content.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

