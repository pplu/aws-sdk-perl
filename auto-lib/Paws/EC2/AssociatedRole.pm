package Paws::EC2::AssociatedRole;
  use Moose;
  has AssociatedRoleArn => (is => 'ro', isa => 'Str', request_name => 'associatedRoleArn', traits => ['NameInRequest']);
  has CertificateS3BucketName => (is => 'ro', isa => 'Str', request_name => 'certificateS3BucketName', traits => ['NameInRequest']);
  has CertificateS3ObjectKey => (is => 'ro', isa => 'Str', request_name => 'certificateS3ObjectKey', traits => ['NameInRequest']);
  has EncryptionKmsKeyId => (is => 'ro', isa => 'Str', request_name => 'encryptionKmsKeyId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociatedRole

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AssociatedRole object:

  $service_obj->Method(Att1 => { AssociatedRoleArn => $value, ..., EncryptionKmsKeyId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AssociatedRole object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatedRoleArn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociatedRoleArn => Str

The ARN of the associated IAM role.


=head2 CertificateS3BucketName => Str

The name of the Amazon S3 bucket in which the Amazon S3 object is
stored.


=head2 CertificateS3ObjectKey => Str

The key of the Amazon S3 object ey where the certificate, certificate
chain, and encrypted private key bundle is stored. The object key is
formated as follows: C<role_arn>/C<certificate_arn>.


=head2 EncryptionKmsKeyId => Str

The ID of the KMS customer master key (CMK) used to encrypt the private
key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
