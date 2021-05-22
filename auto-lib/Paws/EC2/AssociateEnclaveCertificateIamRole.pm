
package Paws::EC2::AssociateEnclaveCertificateIamRole;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateEnclaveCertificateIamRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AssociateEnclaveCertificateIamRoleResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateEnclaveCertificateIamRole - Arguments for method AssociateEnclaveCertificateIamRole on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateEnclaveCertificateIamRole on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AssociateEnclaveCertificateIamRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateEnclaveCertificateIamRole.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $AssociateEnclaveCertificateIamRoleResult =
      $ec2->AssociateEnclaveCertificateIamRole(
      CertificateArn => 'MyResourceArn',    # OPTIONAL
      DryRun         => 1,                  # OPTIONAL
      RoleArn        => 'MyResourceArn',    # OPTIONAL
      );

    # Results:
    my $CertificateS3BucketName =
      $AssociateEnclaveCertificateIamRoleResult->CertificateS3BucketName;
    my $CertificateS3ObjectKey =
      $AssociateEnclaveCertificateIamRoleResult->CertificateS3ObjectKey;
    my $EncryptionKmsKeyId =
      $AssociateEnclaveCertificateIamRoleResult->EncryptionKmsKeyId;

    # Returns a L<Paws::EC2::AssociateEnclaveCertificateIamRoleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AssociateEnclaveCertificateIamRole>

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The ARN of the ACM certificate with which to associate the IAM role.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 RoleArn => Str

The ARN of the IAM role to associate with the ACM certificate. You can
associate up to 16 IAM roles with an ACM certificate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateEnclaveCertificateIamRole in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

