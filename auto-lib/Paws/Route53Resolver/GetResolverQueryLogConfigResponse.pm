
package Paws::Route53Resolver::GetResolverQueryLogConfigResponse;
  use Moose;
  has ResolverQueryLogConfig => (is => 'ro', isa => 'Paws::Route53Resolver::ResolverQueryLogConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::GetResolverQueryLogConfigResponse

=head1 ATTRIBUTES


=head2 ResolverQueryLogConfig => L<Paws::Route53Resolver::ResolverQueryLogConfig>

Information about the Resolver query logging configuration that you
specified in a C<GetQueryLogConfig> request.


=head2 _request_id => Str


=cut

1;