
package Paws::EC2::CopyImage;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Encrypted => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'encrypted' );
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId' );
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SourceImageId => (is => 'ro', isa => 'Str', required => 1);
  has SourceRegion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CopyImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopyImage - Arguments for method CopyImage on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyImage on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CopyImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyImage.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CopyImageResult = $ec2->CopyImage(
      Name          => 'MyString',
      SourceImageId => 'MyString',
      SourceRegion  => 'MyString',
      ClientToken   => 'MyString',    # OPTIONAL
      Description   => 'MyString',    # OPTIONAL
      DryRun        => 1,             # OPTIONAL
      Encrypted     => 1,             # OPTIONAL
      KmsKeyId      => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ImageId = $CopyImageResult->ImageId;

    # Returns a L<Paws::EC2::CopyImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CopyImage>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see How to Ensure Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 Description => Str

A description for the new AMI in the destination region.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Encrypted => Bool

Specifies whether the destination snapshots of the copied image should
be encrypted. You can encrypt a copy of an unencrypted snapshot, but
you cannot create an unencrypted copy of an encrypted snapshot. The
default CMK for EBS is used unless you specify a non-default AWS Key
Management Service (AWS KMS) CMK using C<KmsKeyId>. For more
information, see Amazon EBS Encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 KmsKeyId => Str

An identifier for the AWS Key Management Service (AWS KMS) customer
master key (CMK) to use when creating the encrypted volume. This
parameter is only required if you want to use a non-default CMK; if
this parameter is not specified, the default CMK for EBS is used. If a
C<KmsKeyId> is specified, the C<Encrypted> flag must also be set.

The CMK identifier may be provided in any of the following formats:

=over

=item *

Key ID

=item *

Key alias, in the form C<alias/I<ExampleAlias>>

=item *

ARN using key ID. The ID ARN contains the C<arn:aws:kms> namespace,
followed by the region of the CMK, the AWS account ID of the CMK owner,
the C<key> namespace, and then the CMK ID. For example,
arn:aws:kms:I<us-east-1>:I<012345678910>:key/I<abcd1234-a123-456a-a12b-a123b4cd56ef>.

=item *

ARN using key alias. The alias ARN contains the C<arn:aws:kms>
namespace, followed by the region of the CMK, the AWS account ID of the
CMK owner, the C<alias> namespace, and then the CMK alias. For example,
arn:aws:kms:I<us-east-1>:I<012345678910>:alias/I<ExampleAlias>.

=back

AWS parses C<KmsKeyId> asynchronously, meaning that the action you call
may appear to complete even though you provided an invalid identifier.
This action will eventually report failure.

The specified CMK must exist in the region that the snapshot is being
copied to.



=head2 B<REQUIRED> Name => Str

The name of the new AMI in the destination region.



=head2 B<REQUIRED> SourceImageId => Str

The ID of the AMI to copy.



=head2 B<REQUIRED> SourceRegion => Str

The name of the region that contains the AMI to copy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyImage in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

