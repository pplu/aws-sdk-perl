package Paws::Route53Resolver::ResolverRuleAssociation;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ResolverRuleId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has VPCId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ResolverRuleAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Resolver::ResolverRuleAssociation object:

  $service_obj->Method(Att1 => { Id => $value, ..., VPCId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Resolver::ResolverRuleAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

In the response to an AssociateResolverRule, DisassociateResolverRule,
or ListResolverRuleAssociations request, information about an
association between a resolver rule and a VPC.

=head1 ATTRIBUTES


=head2 Id => Str

  The ID of the association between a resolver rule and a VPC. Resolver
assigns this value when you submit an AssociateResolverRule request.


=head2 Name => Str

  The name of an association between a resolver rule and a VPC.


=head2 ResolverRuleId => Str

  The ID of the resolver rule that you associated with the VPC that is
specified by C<VPCId>.


=head2 Status => Str

  A code that specifies the current status of the association between a
resolver rule and a VPC.


=head2 StatusMessage => Str

  A detailed description of the status of the association between a
resolver rule and a VPC.


=head2 VPCId => Str

  The ID of the VPC that you associated the resolver rule with.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

