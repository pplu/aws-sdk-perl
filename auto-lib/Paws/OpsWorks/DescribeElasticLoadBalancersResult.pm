
package Paws::OpsWorks::DescribeElasticLoadBalancersResult;
  use Moose;
  has ElasticLoadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::ElasticLoadBalancer]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeElasticLoadBalancersResult

=head1 ATTRIBUTES


=head2 ElasticLoadBalancers => ArrayRef[L<Paws::OpsWorks::ElasticLoadBalancer>]

A list of C<ElasticLoadBalancer> objects that describe the specified
Elastic Load Balancing instances.


=head2 _request_id => Str


=cut

1;