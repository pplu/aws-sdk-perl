
package Paws::Route53Resolver::AssociateResolverRule;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has ResolverRuleId => (is => 'ro', isa => 'Str', required => 1);
  has VPCId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateResolverRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::AssociateResolverRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::AssociateResolverRule - Arguments for method AssociateResolverRule on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateResolverRule on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method AssociateResolverRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateResolverRule.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $AssociateResolverRuleResponse = $route53resolver->AssociateResolverRule(
      ResolverRuleId => 'MyResourceId',
      VPCId          => 'MyResourceId',
      Name           => 'MyName',         # OPTIONAL
    );

    # Results:
    my $ResolverRuleAssociation =
      $AssociateResolverRuleResponse->ResolverRuleAssociation;

    # Returns a L<Paws::Route53Resolver::AssociateResolverRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/AssociateResolverRule>

=head1 ATTRIBUTES


=head2 Name => Str

A name for the association that you're creating between a resolver rule
and a VPC.



=head2 B<REQUIRED> ResolverRuleId => Str

The ID of the resolver rule that you want to associate with the VPC. To
list the existing resolver rules, use ListResolverRules.



=head2 B<REQUIRED> VPCId => Str

The ID of the VPC that you want to associate the resolver rule with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateResolverRule in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

