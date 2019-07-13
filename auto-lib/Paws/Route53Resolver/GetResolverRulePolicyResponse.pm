
package Paws::Route53Resolver::GetResolverRulePolicyResponse;
  use Moose;
  has ResolverRulePolicy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::GetResolverRulePolicyResponse

=head1 ATTRIBUTES


=head2 ResolverRulePolicy => Str

Information about the resolver rule policy that you specified in a
C<GetResolverRulePolicy> request.


=head2 _request_id => Str


=cut

1;