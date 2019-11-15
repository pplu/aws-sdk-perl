
package Paws::EC2::ModifyEbsDefaultKmsKeyId;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyEbsDefaultKmsKeyId');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyEbsDefaultKmsKeyIdResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyEbsDefaultKmsKeyId - Arguments for method ModifyEbsDefaultKmsKeyId on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyEbsDefaultKmsKeyId on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyEbsDefaultKmsKeyId.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyEbsDefaultKmsKeyId.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyEbsDefaultKmsKeyIdResult = $ec2->ModifyEbsDefaultKmsKeyId(
      KmsKeyId => 'MyKmsKeyId',
      DryRun   => 1,              # OPTIONAL
    );

    # Results:
    my $KmsKeyId = $ModifyEbsDefaultKmsKeyIdResult->KmsKeyId;

    # Returns a L<Paws::EC2::ModifyEbsDefaultKmsKeyIdResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyEbsDefaultKmsKeyId>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> KmsKeyId => Str

The identifier of the AWS Key Management Service (AWS KMS) customer
master key (CMK) to use for Amazon EBS encryption. If this parameter is
not specified, your AWS managed CMK for EBS is used. If C<KmsKeyId> is
specified, the encrypted state must be C<true>.

You can specify the CMK using any of the following:

=over

=item *

Key ID. For example, key/1234abcd-12ab-34cd-56ef-1234567890ab.

=item *

Key alias. For example, alias/ExampleAlias.

=item *

Key ARN. For example,
arn:aws:kms:I<us-east-1>:I<012345678910>:key/I<abcd1234-a123-456a-a12b-a123b4cd56ef>.

=item *

Alias ARN. For example,
arn:aws:kms:I<us-east-1>:I<012345678910>:alias/I<ExampleAlias>.

=back

AWS authenticates the CMK asynchronously. Therefore, if you specify an
ID, alias, or ARN that is not valid, the action can appear to complete,
but eventually fails.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyEbsDefaultKmsKeyId in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

