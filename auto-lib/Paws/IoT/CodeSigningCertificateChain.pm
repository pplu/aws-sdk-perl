package Paws::IoT::CodeSigningCertificateChain;
  use Moose;
  has CertificateName => (is => 'ro', isa => 'Str', request_name => 'certificateName', traits => ['NameInRequest']);
  has InlineDocument => (is => 'ro', isa => 'Str', request_name => 'inlineDocument', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CodeSigningCertificateChain

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::CodeSigningCertificateChain object:

  $service_obj->Method(Att1 => { CertificateName => $value, ..., InlineDocument => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::CodeSigningCertificateChain object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateName

=head1 DESCRIPTION

Describes the certificate chain being used when code signing a file.

=head1 ATTRIBUTES


=head2 CertificateName => Str

  The name of the certificate.


=head2 InlineDocument => Str

  A base64 encoded binary representation of the code signing certificate
chain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

