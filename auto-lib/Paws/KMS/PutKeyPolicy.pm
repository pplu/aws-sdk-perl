
package Paws::KMS::PutKeyPolicy;
  use Moose;
  has BypassPolicyLockoutSafetyCheck => (is => 'ro', isa => 'Bool');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutKeyPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::PutKeyPolicy - Arguments for method PutKeyPolicy on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutKeyPolicy on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method PutKeyPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutKeyPolicy.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To attach a key policy to a customer master key (CMK)
    # The following example attaches a key policy to the specified CMK.
    $kms->PutKeyPolicy(
      {
        'KeyId'  => '1234abcd-12ab-34cd-56ef-1234567890ab',
        'Policy' => '{
    "Version": "2012-10-17",
    "Id": "custom-policy-2016-12-07",
    "Statement": [
        {
            "Sid": "Enable IAM User Permissions",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::111122223333:root"
            },
            "Action": "kms:*",
            "Resource": "*"
        },
        {
            "Sid": "Allow access for Key Administrators",
            "Effect": "Allow",
            "Principal": {
                "AWS": [
                    "arn:aws:iam::111122223333:user/ExampleAdminUser",
                    "arn:aws:iam::111122223333:role/ExampleAdminRole"
                ]
            },
            "Action": [
                "kms:Create*",
                "kms:Describe*",
                "kms:Enable*",
                "kms:List*",
                "kms:Put*",
                "kms:Update*",
                "kms:Revoke*",
                "kms:Disable*",
                "kms:Get*",
                "kms:Delete*",
                "kms:ScheduleKeyDeletion",
                "kms:CancelKeyDeletion"
            ],
            "Resource": "*"
        },
        {
            "Sid": "Allow use of the key",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::111122223333:role/ExamplePowerUserRole"
            },
            "Action": [
                "kms:Encrypt",
                "kms:Decrypt",
                "kms:ReEncrypt*",
                "kms:GenerateDataKey*",
                "kms:DescribeKey"
            ],
            "Resource": "*"
        },
        {
            "Sid": "Allow attachment of persistent resources",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::111122223333:role/ExamplePowerUserRole"
            },
            "Action": [
                "kms:CreateGrant",
                "kms:ListGrants",
                "kms:RevokeGrant"
            ],
            "Resource": "*",
            "Condition": {
                "Bool": {
                    "kms:GrantIsForAWSResource": "true"
                }
            }
        }
    ]
}
',
        'PolicyName' => 'default'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/PutKeyPolicy>

=head1 ATTRIBUTES


=head2 BypassPolicyLockoutSafetyCheck => Bool

A flag to indicate whether to bypass the key policy lockout safety
check.

Setting this value to true increases the risk that the CMK becomes
unmanageable. Do not set this value to true indiscriminately.

For more information, refer to the scenario in the Default Key Policy
(http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam)
section in the I<AWS Key Management Service Developer Guide>.

Use this parameter only when you intend to prevent the principal that
is making the request from making a subsequent C<PutKeyPolicy> request
on the CMK.

The default value is false.



=head2 B<REQUIRED> KeyId => Str

A unique identifier for the customer master key (CMK).

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=back

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.



=head2 B<REQUIRED> Policy => Str

The key policy to attach to the CMK.

The key policy must meet the following criteria:

=over

=item *

If you don't set C<BypassPolicyLockoutSafetyCheck> to true, the key
policy must allow the principal that is making the C<PutKeyPolicy>
request to make a subsequent C<PutKeyPolicy> request on the CMK. This
reduces the risk that the CMK becomes unmanageable. For more
information, refer to the scenario in the Default Key Policy
(http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam)
section of the I<AWS Key Management Service Developer Guide>.

=item *

Each statement in the key policy must contain one or more principals.
The principals in the key policy must exist and be visible to AWS KMS.
When you create a new AWS principal (for example, an IAM user or role),
you might need to enforce a delay before including the new principal in
a key policy because the new principal might not be immediately visible
to AWS KMS. For more information, see Changes that I make are not
always immediately visible
(http://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency)
in the I<AWS Identity and Access Management User Guide>.

=back

The key policy size limit is 32 kilobytes (32768 bytes).



=head2 B<REQUIRED> PolicyName => Str

The name of the key policy. The only valid value is C<default>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutKeyPolicy in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

