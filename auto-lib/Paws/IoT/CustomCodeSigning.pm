package Paws::IoT::CustomCodeSigning;
  use Moose;
  has CertificateChain => (is => 'ro', isa => 'Paws::IoT::CodeSigningCertificateChain', request_name => 'certificateChain', traits => ['NameInRequest']);
  has HashAlgorithm => (is => 'ro', isa => 'Str', request_name => 'hashAlgorithm', traits => ['NameInRequest']);
  has Signature => (is => 'ro', isa => 'Paws::IoT::CodeSigningSignature', request_name => 'signature', traits => ['NameInRequest']);
  has SignatureAlgorithm => (is => 'ro', isa => 'Str', request_name => 'signatureAlgorithm', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CustomCodeSigning

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::CustomCodeSigning object:

  $service_obj->Method(Att1 => { CertificateChain => $value, ..., SignatureAlgorithm => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::CustomCodeSigning object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateChain

=head1 DESCRIPTION

Describes a custom method used to code sign a file.

=head1 ATTRIBUTES


=head2 CertificateChain => L<Paws::IoT::CodeSigningCertificateChain>

  The certificate chain.


=head2 HashAlgorithm => Str

  The hash algorithm used to code sign the file.


=head2 Signature => L<Paws::IoT::CodeSigningSignature>

  The signature for the file.


=head2 SignatureAlgorithm => Str

  The signature algorithm used to code sign the file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

