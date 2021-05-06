
package Paws::OpsWorks::DescribeElasticIpsResult;
  use Moose;
  has ElasticIps => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::ElasticIp]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeElasticIpsResult

=head1 ATTRIBUTES


=head2 ElasticIps => ArrayRef[L<Paws::OpsWorks::ElasticIp>]

An C<ElasticIps> object that describes the specified Elastic IP
addresses.


=head2 _request_id => Str


=cut

1;