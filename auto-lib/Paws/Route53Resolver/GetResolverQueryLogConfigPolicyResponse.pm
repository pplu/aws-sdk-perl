
package Paws::Route53Resolver::GetResolverQueryLogConfigPolicyResponse;
  use Moose;
  has ResolverQueryLogConfigPolicy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::GetResolverQueryLogConfigPolicyResponse

=head1 ATTRIBUTES


=head2 ResolverQueryLogConfigPolicy => Str

Information about the query logging policy for the query logging
configuration that you specified in a
C<GetResolverQueryLogConfigPolicy> request.


=head2 _request_id => Str


=cut

1;