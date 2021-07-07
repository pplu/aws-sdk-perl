
package Paws::KMS::ReplicateKey;
  use Moose;
  has BypassPolicyLockoutSafetyCheck => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str');
  has ReplicaRegion => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::KMS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplicateKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::ReplicateKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ReplicateKey - Arguments for method ReplicateKey on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReplicateKey on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method ReplicateKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReplicateKey.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    my $ReplicateKeyResponse = $kms->ReplicateKey(
      KeyId                          => 'MyKeyIdType',
      ReplicaRegion                  => 'MyRegionType',
      BypassPolicyLockoutSafetyCheck => 1,                      # OPTIONAL
      Description                    => 'MyDescriptionType',    # OPTIONAL
      Policy                         => 'MyPolicyType',         # OPTIONAL
      Tags                           => [
        {
          TagKey   => 'MyTagKeyType',      # min: 1, max: 128
          TagValue => 'MyTagValueType',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ReplicaKeyMetadata = $ReplicateKeyResponse->ReplicaKeyMetadata;
    my $ReplicaPolicy      = $ReplicateKeyResponse->ReplicaPolicy;
    my $ReplicaTags        = $ReplicateKeyResponse->ReplicaTags;

    # Returns a L<Paws::KMS::ReplicateKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/ReplicateKey>

=head1 ATTRIBUTES


=head2 BypassPolicyLockoutSafetyCheck => Bool

A flag to indicate whether to bypass the key policy lockout safety
check.

Setting this value to true increases the risk that the CMK becomes
unmanageable. Do not set this value to true indiscriminately.

For more information, refer to the scenario in the Default Key Policy
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam)
section in the I<AWS Key Management Service Developer Guide>.

Use this parameter only when you intend to prevent the principal that
is making the request from making a subsequent C<PutKeyPolicy> request
on the CMK.

The default value is false.



=head2 Description => Str

A description of the CMK. Use a description that helps you decide
whether the CMK is appropriate for a task. The default value is an
empty string (no description).

The description is not a shared property of multi-Region keys. You can
specify the same description or a different description for each key in
a set of related multi-Region keys. AWS KMS does not synchronize this
property.



=head2 B<REQUIRED> KeyId => Str

Identifies the multi-Region primary key that is being replicated. To
determine whether a CMK is a multi-Region primary key, use the
DescribeKey operation to check the value of the C<MultiRegionKeyType>
property.

Specify the key ID or key ARN of a multi-Region primary key.

For example:

=over

=item *

Key ID: C<mrk-1234abcd12ab34cd56ef1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab>

=back

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.



=head2 Policy => Str

The key policy to attach to the CMK. This parameter is optional. If you
do not provide a key policy, AWS KMS attaches the default key policy
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default)
to the CMK.

The key policy is not a shared property of multi-Region keys. You can
specify the same key policy or a different key policy for each key in a
set of related multi-Region keys. AWS KMS does not synchronize this
property.

If you provide a key policy, it must meet the following criteria:

=over

=item *

If you don't set C<BypassPolicyLockoutSafetyCheck> to true, the key
policy must give the caller C<kms:PutKeyPolicy> permission on the
replica CMK. This reduces the risk that the CMK becomes unmanageable.
For more information, refer to the scenario in the Default Key Policy
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam)
section of the I< I<AWS Key Management Service Developer Guide> >.

=item *

Each statement in the key policy must contain one or more principals.
The principals in the key policy must exist and be visible to AWS KMS.
When you create a new AWS principal (for example, an IAM user or role),
you might need to enforce a delay before including the new principal in
a key policy because the new principal might not be immediately visible
to AWS KMS. For more information, see Changes that I make are not
always immediately visible
(https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency)
in the I<AWS Identity and Access Management User Guide>.

=item *

The key policy size quota is 32 kilobytes (32768 bytes).

=back




=head2 B<REQUIRED> ReplicaRegion => Str

The Region ID of the AWS Region for this replica key.

Enter the Region ID, such as C<us-east-1> or C<ap-southeast-2>. For a
list of AWS Regions in which AWS KMS is supported, see AWS KMS service
endpoints
(https://docs.aws.amazon.com/general/latest/gr/kms.html#kms_region) in
the I<Amazon Web Services General Reference>.

The replica must be in a different AWS Region than its primary key and
other replicas of that primary key, but in the same AWS partition. AWS
KMS must be available in the replica Region. If the Region is not
enabled by default, the AWS account must be enabled in the Region.

For information about AWS partitions, see Amazon Resource Names (ARNs)
in the I<Amazon Web Services General Reference>.
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
For information about enabling and disabling Regions, see Enabling a
Region
(https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable)
and Disabling a Region
(https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-disable)
in the I<Amazon Web Services General Reference>.



=head2 Tags => ArrayRef[L<Paws::KMS::Tag>]

Assigns one or more tags to the replica key. Use this parameter to tag
the CMK when it is created. To tag an existing CMK, use the TagResource
operation.

Tagging or untagging a CMK can allow or deny permission to the CMK. For
details, see Using ABAC in AWS KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in
the I<AWS Key Management Service Developer Guide>.

To use this parameter, you must have kms:TagResource
(https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
permission in an IAM policy.

Tags are not a shared property of multi-Region keys. You can specify
the same tags or different tags for each key in a set of related
multi-Region keys. AWS KMS does not synchronize this property.

Each tag consists of a tag key and a tag value. Both the tag key and
the tag value are required, but the tag value can be an empty (null)
string. You cannot have more than one tag on a CMK with the same tag
key. If you specify an existing tag key with a different tag value, AWS
KMS replaces the current tag value with the specified one.

When you assign tags to an AWS resource, AWS generates a cost
allocation report with usage and costs aggregated by tags. Tags can
also be used to control access to a CMK. For details, see Tagging Keys
(https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReplicateKey in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

