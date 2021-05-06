
package Paws::OpsWorks::RegisterElasticIpResult;
  use Moose;
  has ElasticIp => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::RegisterElasticIpResult

=head1 ATTRIBUTES


=head2 ElasticIp => Str

The Elastic IP address.


=head2 _request_id => Str


=cut

1;