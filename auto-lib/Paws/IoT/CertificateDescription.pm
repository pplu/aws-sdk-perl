package Paws::IoT::CertificateDescription;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', xmlname => 'certificateArn', request_name => 'certificateArn', traits => ['Unwrapped','NameInRequest']);
  has CertificateId => (is => 'ro', isa => 'Str', xmlname => 'certificateId', request_name => 'certificateId', traits => ['Unwrapped','NameInRequest']);
  has CertificatePem => (is => 'ro', isa => 'Str', xmlname => 'certificatePem', request_name => 'certificatePem', traits => ['Unwrapped','NameInRequest']);
  has CreationDate => (is => 'ro', isa => 'Str', xmlname => 'creationDate', request_name => 'creationDate', traits => ['Unwrapped','NameInRequest']);
  has LastModifiedDate => (is => 'ro', isa => 'Str', xmlname => 'lastModifiedDate', request_name => 'lastModifiedDate', traits => ['Unwrapped','NameInRequest']);
  has OwnedBy => (is => 'ro', isa => 'Str', xmlname => 'ownedBy', request_name => 'ownedBy', traits => ['Unwrapped','NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', request_name => 'status', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CertificateDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::CertificateDescription object:

  $service_obj->Method(Att1 => { CertificateArn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::CertificateDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateArn

=head1 DESCRIPTION

Describes a certificate.

=head1 ATTRIBUTES

=head2 CertificateArn => Str

  The ARN of the certificate.

=head2 CertificateId => Str

  The ID of the certificate.

=head2 CertificatePem => Str

  The certificate data, in PEM format.

=head2 CreationDate => Str

  The date and time the certificate was created.

=head2 LastModifiedDate => Str

  The date and time the certificate was last modified.

=head2 OwnedBy => Str

  The ID of the AWS account that owns the certificate.

=head2 Status => Str

  The status of the certificate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

