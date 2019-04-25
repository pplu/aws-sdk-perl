package Paws::ACMPCA::RevocationConfiguration;
  use Moose;
  has CrlConfiguration => (is => 'ro', isa => 'Paws::ACMPCA::CrlConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::RevocationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACMPCA::RevocationConfiguration object:

  $service_obj->Method(Att1 => { CrlConfiguration => $value, ..., CrlConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACMPCA::RevocationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CrlConfiguration

=head1 DESCRIPTION

Certificate revocation information used by the
CreateCertificateAuthority and UpdateCertificateAuthority operations.
Your private certificate authority (CA) can create and maintain a
certificate revocation list (CRL). A CRL contains information about
certificates revoked by your CA. For more information, see
RevokeCertificate.

=head1 ATTRIBUTES


=head2 CrlConfiguration => L<Paws::ACMPCA::CrlConfiguration>

  Configuration of the certificate revocation list (CRL), if any,
maintained by your private CA.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

