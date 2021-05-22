
package Paws::EC2::CopyImage;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DestinationOutpostArn => (is => 'ro', isa => 'Str');
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
    # To copy an AMI to another region
    # This example copies the specified AMI from the us-east-1 region to the
    # current region.
    my $CopyImageResult = $ec2->CopyImage(
      'Description'   => '',
      'Name'          => 'My server',
      'SourceImageId' => 'ami-5731123e',
      'SourceRegion'  => 'us-east-1'
    );

    # Results:
    my $ImageId = $CopyImageResult->ImageId;

    # Returns a L<Paws::EC2::CopyImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CopyImage>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon EC2 API Reference>.



=head2 Description => Str

A description for the new AMI in the destination Region.



=head2 DestinationOutpostArn => Str

The Amazon Resource Name (ARN) of the Outpost to which to copy the AMI.
Only specify this parameter when copying an AMI from an AWS Region to
an Outpost. The AMI must be in the Region of the destination Outpost.
You cannot copy an AMI from an Outpost to a Region, from one Outpost to
another, or within the same Outpost.

For more information, see Copying AMIs from an AWS Region to an Outpost
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#copy-amis)
in the I<Amazon Elastic Compute Cloud User Guide>.



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

The identifier of the symmetric AWS Key Management Service (AWS KMS)
customer master key (CMK) to use when creating encrypted volumes. If
this parameter is not specified, your AWS managed CMK for EBS is used.
If you specify a CMK, you must also set the encrypted state to C<true>.

You can specify a CMK using any of the following:

=over

=item *

Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.

=item *

Key alias. For example, alias/ExampleAlias.

=item *

Key ARN. For example,
arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.

=item *

Alias ARN. For example,
arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.

=back

AWS authenticates the CMK asynchronously. Therefore, if you specify an
identifier that is not valid, the action can appear to complete, but
eventually fails.

The specified CMK must exist in the destination Region.

Amazon EBS does not support asymmetric CMKs.



=head2 B<REQUIRED> Name => Str

The name of the new AMI in the destination Region.



=head2 B<REQUIRED> SourceImageId => Str

The ID of the AMI to copy.



=head2 B<REQUIRED> SourceRegion => Str

The name of the Region that contains the AMI to copy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyImage in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

