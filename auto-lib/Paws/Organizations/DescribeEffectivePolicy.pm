
package Paws::Organizations::DescribeEffectivePolicy;
  use Moose;
  has PolicyType => (is => 'ro', isa => 'Str', required => 1);
  has TargetId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEffectivePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::DescribeEffectivePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeEffectivePolicy - Arguments for method DescribeEffectivePolicy on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEffectivePolicy on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method DescribeEffectivePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEffectivePolicy.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    my $DescribeEffectivePolicyResponse =
      $organizations->DescribeEffectivePolicy(
      PolicyType => 'TAG_POLICY',
      TargetId   => 'MyPolicyTargetId',    # OPTIONAL
      );

    # Results:
    my $EffectivePolicy = $DescribeEffectivePolicyResponse->EffectivePolicy;

    # Returns a L<Paws::Organizations::DescribeEffectivePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/DescribeEffectivePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyType => Str

The type of policy that you want information about. You can specify one
of the following values:

=over

=item *

AISERVICES_OPT_OUT_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html)

=item *

BACKUP_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html)

=item *

TAG_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)

=back


Valid values are: C<"TAG_POLICY">, C<"BACKUP_POLICY">, C<"AISERVICES_OPT_OUT_POLICY">

=head2 TargetId => Str

When you're signed in as the management account, specify the ID of the
account that you want details about. Specifying an organization root or
organizational unit (OU) as the target is not supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEffectivePolicy in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

