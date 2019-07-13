
package Paws::Route53Resolver::UpdateResolverRuleResponse;
  use Moose;
  has ResolverRule => (is => 'ro', isa => 'Paws::Route53Resolver::ResolverRule');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateResolverRuleResponse

=head1 ATTRIBUTES


=head2 ResolverRule => L<Paws::Route53Resolver::ResolverRule>

The response to an C<UpdateResolverRule> request.


=head2 _request_id => Str


=cut

1;