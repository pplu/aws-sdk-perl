
package Paws::Route53Resolver::CreateResolverQueryLogConfigResponse;
  use Moose;
  has ResolverQueryLogConfig => (is => 'ro', isa => 'Paws::Route53Resolver::ResolverQueryLogConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::CreateResolverQueryLogConfigResponse

=head1 ATTRIBUTES


=head2 ResolverQueryLogConfig => L<Paws::Route53Resolver::ResolverQueryLogConfig>

Information about the C<CreateResolverQueryLogConfig> request,
including the status of the request.


=head2 _request_id => Str


=cut

1;