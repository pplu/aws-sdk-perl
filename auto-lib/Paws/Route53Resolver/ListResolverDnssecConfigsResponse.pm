
package Paws::Route53Resolver::ListResolverDnssecConfigsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResolverDnssecConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::ResolverDnssecConfig]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListResolverDnssecConfigsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If a response includes the last of the DNSSEC configurations that are
associated with the current AWS account, C<NextToken> doesn't appear in
the response.

If a response doesn't include the last of the configurations, you can
get more configurations by submitting another ListResolverDnssecConfigs
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListResolverDnssecConfigs.html)
request. Get the value of C<NextToken> that Amazon Route 53 returned in
the previous response and include it in C<NextToken> in the next
request.


=head2 ResolverDnssecConfigs => ArrayRef[L<Paws::Route53Resolver::ResolverDnssecConfig>]

An array that contains one ResolverDnssecConfig
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_ResolverDnssecConfig.html)
element for each configuration for DNSSEC validation that is associated
with the current AWS account.


=head2 _request_id => Str


=cut

1;