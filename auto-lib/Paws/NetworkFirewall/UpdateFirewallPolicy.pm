
package Paws::NetworkFirewall::UpdateFirewallPolicy;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has FirewallPolicy => (is => 'ro', isa => 'Paws::NetworkFirewall::FirewallPolicy', required => 1);
  has FirewallPolicyArn => (is => 'ro', isa => 'Str');
  has FirewallPolicyName => (is => 'ro', isa => 'Str');
  has UpdateToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFirewallPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::UpdateFirewallPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::UpdateFirewallPolicy - Arguments for method UpdateFirewallPolicy on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFirewallPolicy on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method UpdateFirewallPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFirewallPolicy.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $UpdateFirewallPolicyResponse = $network -firewall->UpdateFirewallPolicy(
      FirewallPolicy => {
        StatelessDefaultActions         => [ 'MyCollectionMember_String', ... ],
        StatelessFragmentDefaultActions => [ 'MyCollectionMember_String', ... ],
        StatefulRuleGroupReferences     => [
          {
            ResourceArn => 'MyResourceArn',    # min: 1, max: 256

          },
          ...
        ],    # OPTIONAL
        StatelessCustomActions => [
          {
            ActionDefinition => {
              PublishMetricAction => {
                Dimensions => [
                  {
                    Value => 'MyDimensionValue',    # min: 1, max: 128

                  },
                  ...
                ],    # min: 1, max: 1

              },    # OPTIONAL
            },
            ActionName => 'MyActionName',    # min: 1, max: 128

          },
          ...
        ],    # OPTIONAL
        StatelessRuleGroupReferences => [
          {
            Priority    => 1,                  # min: 1, max: 65535
            ResourceArn => 'MyResourceArn',    # min: 1, max: 256

          },
          ...
        ],    # OPTIONAL
      },
      UpdateToken        => 'MyUpdateToken',
      Description        => 'MyDescription',     # OPTIONAL
      DryRun             => 1,                   # OPTIONAL
      FirewallPolicyArn  => 'MyResourceArn',     # OPTIONAL
      FirewallPolicyName => 'MyResourceName',    # OPTIONAL
    );

    # Results:
    my $FirewallPolicyResponse =
      $UpdateFirewallPolicyResponse->FirewallPolicyResponse;
    my $UpdateToken = $UpdateFirewallPolicyResponse->UpdateToken;

    # Returns a L<Paws::NetworkFirewall::UpdateFirewallPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/UpdateFirewallPolicy>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the firewall policy.



=head2 DryRun => Bool

Indicates whether you want Network Firewall to just check the validity
of the request, rather than run the request.

If set to C<TRUE>, Network Firewall checks whether the request can run
successfully, but doesn't actually make the requested changes. The call
returns the value that the request would return if you ran it with dry
run set to C<FALSE>, but doesn't make additions or changes to your
resources. This option allows you to make sure that you have the
required permissions to run the request and that your request
parameters are valid.

If set to C<FALSE>, Network Firewall makes the requested changes to
your resources.



=head2 B<REQUIRED> FirewallPolicy => L<Paws::NetworkFirewall::FirewallPolicy>

The updated firewall policy to use for the firewall.



=head2 FirewallPolicyArn => Str

The Amazon Resource Name (ARN) of the firewall policy.

You must specify the ARN or the name, and you can specify both.



=head2 FirewallPolicyName => Str

The descriptive name of the firewall policy. You can't change the name
of a firewall policy after you create it.

You must specify the ARN or the name, and you can specify both.



=head2 B<REQUIRED> UpdateToken => Str

A token used for optimistic locking. Network Firewall returns a token
to your requests that access the firewall policy. The token marks the
state of the policy resource at the time of the request.

To make changes to the policy, you provide the token in your request.
Network Firewall uses the token to ensure that the policy hasn't
changed since you last retrieved it. If it has changed, the operation
fails with an C<InvalidTokenException>. If this happens, retrieve the
firewall policy again to get a current copy of it with current token.
Reapply your changes as needed, then try the operation again using the
new token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFirewallPolicy in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

