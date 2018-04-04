package Paws::IAM::ServerCertificateMetadata;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Expiration => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has ServerCertificateId => (is => 'ro', isa => 'Str', required => 1);
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);
  has UploadDate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ServerCertificateMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::ServerCertificateMetadata object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UploadDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::ServerCertificateMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about a server certificate without its certificate
body, certificate chain, and private key.

This data type is used as a response element in the
UploadServerCertificate and ListServerCertificates operations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The Amazon Resource Name (ARN) specifying the server certificate. For
more information about ARNs and how to use them in policies, see IAM
Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 Expiration => Str

  The date on which the certificate is set to expire.


=head2 B<REQUIRED> Path => Str

  The path to the server certificate. For more information about paths,
see IAM Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 B<REQUIRED> ServerCertificateId => Str

  The stable and unique string identifying the server certificate. For
more information about IDs, see IAM Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 B<REQUIRED> ServerCertificateName => Str

  The name that identifies the server certificate.


=head2 UploadDate => Str

  The date when the server certificate was uploaded.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

