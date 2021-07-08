
package Paws::WAFV2::PutPermissionPolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutPermissionPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::PutPermissionPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::PutPermissionPolicy - Arguments for method PutPermissionPolicy on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPermissionPolicy on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method PutPermissionPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPermissionPolicy.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $PutPermissionPolicyResponse = $wafv2->PutPermissionPolicy(
      Policy      => 'MyPolicyString',
      ResourceArn => 'MyResourceArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/PutPermissionPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

The policy to attach to the specified rule group.

The policy specifications must conform to the following:

=over

=item *

The policy must be composed using IAM Policy version 2012-10-17 or
version 2015-01-01.

=item *

The policy must include specifications for C<Effect>, C<Action>, and
C<Principal>.

=item *

C<Effect> must specify C<Allow>.

=item *

C<Action> must specify C<wafv2:CreateWebACL>, C<wafv2:UpdateWebACL>,
and C<wafv2:PutFirewallManagerRuleGroups>. WAF rejects any extra
actions or wildcard actions in the policy.

=item *

The policy must not include a C<Resource> parameter.

=back

For more information, see IAM Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html).



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the RuleGroup to which you want to
attach the policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPermissionPolicy in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

