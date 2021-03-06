
package Paws::Route53Resolver::GetResolverQueryLogConfigAssociationResponse;
  use Moose;
  has ResolverQueryLogConfigAssociation => (is => 'ro', isa => 'Paws::Route53Resolver::ResolverQueryLogConfigAssociation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::GetResolverQueryLogConfigAssociationResponse

=head1 ATTRIBUTES


=head2 ResolverQueryLogConfigAssociation => L<Paws::Route53Resolver::ResolverQueryLogConfigAssociation>

Information about the Resolver query logging configuration association
that you specified in a C<GetQueryLogConfigAssociation> request.


=head2 _request_id => Str


=cut

1;