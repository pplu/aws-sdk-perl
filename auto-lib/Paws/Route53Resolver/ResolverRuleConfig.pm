package Paws::Route53Resolver::ResolverRuleConfig;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has ResolverEndpointId => (is => 'ro', isa => 'Str');
  has TargetIps => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::TargetAddress]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ResolverRuleConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Resolver::ResolverRuleConfig object:

  $service_obj->Method(Att1 => { Name => $value, ..., TargetIps => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Resolver::ResolverRuleConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

In an UpdateResolverRule request, information about the changes that
you want to make.

=head1 ATTRIBUTES


=head2 Name => Str

  The new name for the resolver rule. The name that you specify appears
in the Resolver dashboard in the Route 53 console.


=head2 ResolverEndpointId => Str

  The ID of the new outbound resolver endpoint that you want to use to
route DNS queries to the IP addresses that you specify in C<TargetIps>.


=head2 TargetIps => ArrayRef[L<Paws::Route53Resolver::TargetAddress>]

  For DNS queries that originate in your VPC, the new IP addresses that
you want to route outbound DNS queries to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

