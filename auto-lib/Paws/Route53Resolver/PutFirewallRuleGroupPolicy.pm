
package Paws::Route53Resolver::PutFirewallRuleGroupPolicy;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has FirewallRuleGroupPolicy => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutFirewallRuleGroupPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::PutFirewallRuleGroupPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::PutFirewallRuleGroupPolicy - Arguments for method PutFirewallRuleGroupPolicy on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutFirewallRuleGroupPolicy on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method PutFirewallRuleGroupPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutFirewallRuleGroupPolicy.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $PutFirewallRuleGroupPolicyResponse =
      $route53resolver->PutFirewallRuleGroupPolicy(
      Arn                     => 'MyArn',
      FirewallRuleGroupPolicy => 'MyFirewallRuleGroupPolicy',

      );

    # Results:
    my $ReturnValue = $PutFirewallRuleGroupPolicyResponse->ReturnValue;

# Returns a L<Paws::Route53Resolver::PutFirewallRuleGroupPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/PutFirewallRuleGroupPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN (Amazon Resource Name) for the rule group that you want to
share.



=head2 B<REQUIRED> FirewallRuleGroupPolicy => Str

The AWS Identity and Access Management (AWS IAM) policy to attach to
the rule group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutFirewallRuleGroupPolicy in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

