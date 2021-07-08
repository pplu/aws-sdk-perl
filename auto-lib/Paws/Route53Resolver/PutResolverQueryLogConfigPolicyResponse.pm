
package Paws::Route53Resolver::PutResolverQueryLogConfigPolicyResponse;
  use Moose;
  has ReturnValue => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::PutResolverQueryLogConfigPolicyResponse

=head1 ATTRIBUTES


=head2 ReturnValue => Bool

Whether the C<PutResolverQueryLogConfigPolicy> request was successful.


=head2 _request_id => Str


=cut

1;