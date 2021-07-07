
package Paws::Route53Resolver::CreateFirewallRuleGroup;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFirewallRuleGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::CreateFirewallRuleGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::CreateFirewallRuleGroup - Arguments for method CreateFirewallRuleGroup on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFirewallRuleGroup on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method CreateFirewallRuleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFirewallRuleGroup.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $CreateFirewallRuleGroupResponse =
      $route53resolver->CreateFirewallRuleGroup(
      CreatorRequestId => 'MyCreatorRequestId',
      Name             => 'MyName',
      Tags             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $FirewallRuleGroup = $CreateFirewallRuleGroupResponse->FirewallRuleGroup;

   # Returns a L<Paws::Route53Resolver::CreateFirewallRuleGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/CreateFirewallRuleGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatorRequestId => Str

A unique string defined by you to identify the request. This allows you
to retry failed requests without the risk of executing the operation
twice. This can be any unique string, for example, a timestamp.



=head2 B<REQUIRED> Name => Str

A name that lets you identify the rule group, to manage and use it.



=head2 Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]

A list of the tag keys and values that you want to associate with the
rule group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFirewallRuleGroup in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

