
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

Paws::KMS::PutKeyPolicy - Arguments for method PutKeyPolicy on Paws::KMS

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutKeyPolicy on the 
AWS Key Management Service service. Use the attributes of this class
as arguments to method PutKeyPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutKeyPolicy.

As an example:

  $service_obj->PutKeyPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 BypassPolicyLockoutSafetyCheck => Bool

A flag to indicate whether to bypass the key policy lockout safety
check.

Setting this value to true increases the likelihood that the CMK
becomes unmanageable. Do not set this value to true indiscriminately.

For more information, refer to the scenario in the Default Key Policy
section in the I<AWS Key Management Service Developer Guide>.

Use this parameter only when you intend to prevent the principal making
the request from making a subsequent C<PutKeyPolicy> request on the
CMK.

The default value is false.



=head2 B<REQUIRED> KeyId => Str

A unique identifier for the CMK.

Use the CMK's unique identifier or its Amazon Resource Name (ARN). For
example:

=over

=item *

Unique ID: 1234abcd-12ab-34cd-56ef-1234567890ab

=item *

ARN:
arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab

=back




=head2 B<REQUIRED> Policy => Str

The key policy to attach to the CMK.

If you do not set C<BypassPolicyLockoutSafetyCheck> to true, the policy
must meet the following criteria:

=over

=item *

It must allow the principal making the C<PutKeyPolicy> request to make
a subsequent C<PutKeyPolicy> request on the CMK. This reduces the
likelihood that the CMK becomes unmanageable. For more information,
refer to the scenario in the Default Key Policy section in the I<AWS
Key Management Service Developer Guide>.

=item *

The principal(s) specified in the key policy must exist and be visible
to AWS KMS. When you create a new AWS principal (for example, an IAM
user or role), you might need to enforce a delay before specifying the
new principal in a key policy because the new principal might not
immediately be visible to AWS KMS. For more information, see Changes
that I make are not always immediately visible in the I<IAM User
Guide>.

=back

The policy size limit is 32 KiB (32768 bytes).



=head2 B<REQUIRED> PolicyName => Str

The name of the key policy.

This value must be C<default>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutKeyPolicy in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

