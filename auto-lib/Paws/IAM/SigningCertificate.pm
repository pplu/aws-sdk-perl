package Paws::IAM::SigningCertificate;
  use Moose;
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UploadDate => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::SigningCertificate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::SigningCertificate object:

  $service_obj->Method(Att1 => { CertificateBody => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::SigningCertificate object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateBody

=head1 DESCRIPTION

Contains information about an X.509 signing certificate.

This data type is used as a response element in the
UploadSigningCertificate and ListSigningCertificates operations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateBody => Str

  The contents of the signing certificate.


=head2 B<REQUIRED> CertificateId => Str

  The ID for the signing certificate.


=head2 B<REQUIRED> Status => Str

  The status of the signing certificate. C<Active> means that the key is
valid for API calls, while C<Inactive> means it is not.


=head2 UploadDate => Str

  The date when the signing certificate was uploaded.


=head2 B<REQUIRED> UserName => Str

  The name of the user the signing certificate is associated with.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

