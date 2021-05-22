
package Paws::NetworkFirewall::PutResourcePolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::PutResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $PutResourcePolicyResponse = $network -firewall->PutResourcePolicy(
      Policy      => 'MyPolicyString',
      ResourceArn => 'MyResourceArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

The AWS Identity and Access Management policy statement that lists the
accounts that you want to share your rule group or firewall policy with
and the operations that you want the accounts to be able to perform.

For a rule group resource, you can specify the following operations in
the Actions section of the statement:

=over

=item *

network-firewall:CreateFirewallPolicy

=item *

network-firewall:UpdateFirewallPolicy

=item *

network-firewall:ListRuleGroups

=back

For a firewall policy resource, you can specify the following
operations in the Actions section of the statement:

=over

=item *

network-firewall:CreateFirewall

=item *

network-firewall:UpdateFirewall

=item *

network-firewall:AssociateFirewallPolicy

=item *

network-firewall:ListFirewallPolicies

=back

In the Resource section of the statement, you specify the ARNs for the
rule groups and firewall policies that you want to share with the
account that you specified in C<Arn>.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the account that you want to share
rule groups and firewall policies with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

