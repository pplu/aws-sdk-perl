
package Paws::Route53Resolver::GetResolverRuleAssociationResponse;
  use Moose;
  has ResolverRuleAssociation => (is => 'ro', isa => 'Paws::Route53Resolver::ResolverRuleAssociation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::GetResolverRuleAssociationResponse

=head1 ATTRIBUTES


=head2 ResolverRuleAssociation => L<Paws::Route53Resolver::ResolverRuleAssociation>

Information about the resolver rule association that you specified in a
C<GetResolverRuleAssociation> request.


=head2 _request_id => Str


=cut

1;