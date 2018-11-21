package Paws::MediaConvert::SpekeKeyProvider;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', request_name => 'certificateArn', traits => ['NameInRequest']);
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has SystemIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'systemIds', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);
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

Settings for use with a SPEKE key provider

=head1 ATTRIBUTES


=head2 CertificateArn => Str

  Optional AWS Certificate Manager ARN for a certificate to send to the
keyprovider. The certificate holds a key used by the keyprovider to
encrypt the keys in its response.


=head2 ResourceId => Str

  The SPEKE-compliant server uses Resource ID (ResourceId) to identify
content.


=head2 SystemIds => ArrayRef[Str|Undef]

  Relates to SPEKE implementation. DRM system identifiers. DASH output
groups support a max of two system ids. Other group types support one
system id.


=head2 Url => Str

  Use URL (Url) to specify the SPEKE-compliant server that will provide
keys for content.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

