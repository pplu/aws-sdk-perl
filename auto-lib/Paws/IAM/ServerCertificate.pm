package Paws::IAM::ServerCertificate;
  use Moose;
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateChain => (is => 'ro', isa => 'Str');
  has ServerCertificateMetadata => (is => 'ro', isa => 'Paws::IAM::ServerCertificateMetadata', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ServerCertificate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::ServerCertificate object:

  $service_obj->Method(Att1 => { CertificateBody => $value, ..., ServerCertificateMetadata => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::ServerCertificate object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateBody

=head1 DESCRIPTION

Contains information about a server certificate.

This data type is used as a response element in the
GetServerCertificate operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateBody => Str

  The contents of the public key certificate.


=head2 CertificateChain => Str

  The contents of the public key certificate chain.


=head2 B<REQUIRED> ServerCertificateMetadata => L<Paws::IAM::ServerCertificateMetadata>

  The meta information of the server certificate, such as its name, path,
ID, and ARN.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

