
package Paws::Route53Resolver::AssociateResolverQueryLogConfigResponse;
  use Moose;
  has ResolverQueryLogConfigAssociation => (is => 'ro', isa => 'Paws::Route53Resolver::ResolverQueryLogConfigAssociation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::AssociateResolverQueryLogConfigResponse

=head1 ATTRIBUTES


=head2 ResolverQueryLogConfigAssociation => L<Paws::Route53Resolver::ResolverQueryLogConfigAssociation>

A complex type that contains settings for a specified association
between an Amazon VPC and a query logging configuration.


=head2 _request_id => Str


=cut

1;