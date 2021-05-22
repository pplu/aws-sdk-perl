
package Paws::Route53Resolver::DeleteResolverQueryLogConfigResponse;
  use Moose;
  has ResolverQueryLogConfig => (is => 'ro', isa => 'Paws::Route53Resolver::ResolverQueryLogConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::DeleteResolverQueryLogConfigResponse

=head1 ATTRIBUTES


=head2 ResolverQueryLogConfig => L<Paws::Route53Resolver::ResolverQueryLogConfig>

Information about the query logging configuration that you deleted,
including the status of the request.


=head2 _request_id => Str


=cut

1;