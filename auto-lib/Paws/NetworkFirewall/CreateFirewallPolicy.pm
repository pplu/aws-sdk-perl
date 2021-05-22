
package Paws::NetworkFirewall::CreateFirewallPolicy;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has FirewallPolicy => (is => 'ro', isa => 'Paws::NetworkFirewall::FirewallPolicy', required => 1);
  has FirewallPolicyName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFirewall::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFirewallPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::CreateFirewallPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::CreateFirewallPolicy - Arguments for method CreateFirewallPolicy on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFirewallPolicy on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method CreateFirewallPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFirewallPolicy.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $CreateFirewallPolicyResponse = $network -firewall->CreateFirewallPolicy(
      FirewallPolicy => {
        StatelessDefaultActions         => [ 'MyCollectionMember_String', ... ],
        StatelessFragmentDefaultActions => [ 'MyCollectionMember_String', ... ],
        StatefulRuleGroupReferences     => [
          {
            ResourceArn => 'MyResourceArn',    # min: 1, max: 256

          },
          ...
        ],                                     # OPTIONAL
        StatelessCustomActions => [
          {
            ActionDefinition => {
              PublishMetricAction => {
                Dimensions => [
                  {
                    Value => 'MyDimensionValue',    # min: 1, max: 128

                  },
                  ...
                ],                                  # min: 1, max: 1

              },    # OPTIONAL
            },
            ActionName => 'MyActionName',    # min: 1, max: 128

          },
          ...
        ],                                   # OPTIONAL
        StatelessRuleGroupReferences => [
          {
            Priority    => 1,                  # min: 1, max: 65535
            ResourceArn => 'MyResourceArn',    # min: 1, max: 256

          },
          ...
        ],                                     # OPTIONAL
      },
      FirewallPolicyName => 'MyResourceName',
      Description        => 'MyDescription',    # OPTIONAL
      DryRun             => 1,                  # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',                  # min: 1, max: 128
          Value => 'MyTagValue',                # max: 256

        },
        ...
      ],                                        # OPTIONAL
    );

    # Results:
    my $FirewallPolicyResponse =
      $CreateFirewallPolicyResponse->FirewallPolicyResponse;
    my $UpdateToken = $CreateFirewallPolicyResponse->UpdateToken;

    # Returns a L<Paws::NetworkFirewall::CreateFirewallPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/CreateFirewallPolicy>

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

The rule groups and policy actions to use in the firewall policy.



=head2 B<REQUIRED> FirewallPolicyName => Str

The descriptive name of the firewall policy. You can't change the name
of a firewall policy after you create it.



=head2 Tags => ArrayRef[L<Paws::NetworkFirewall::Tag>]

The key:value pairs to associate with the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFirewallPolicy in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

