
package Paws::Route53Resolver::GetResolverRuleResponse;
  use Moose;
  has ResolverRule => (is => 'ro', isa => 'Paws::Route53Resolver::ResolverRule');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::GetResolverRuleResponse

=head1 ATTRIBUTES


=head2 ResolverRule => L<Paws::Route53Resolver::ResolverRule>

Information about the resolver rule that you specified in a
C<GetResolverRule> request.


=head2 _request_id => Str


=cut

1;