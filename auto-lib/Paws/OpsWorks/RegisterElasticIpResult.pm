
package Paws::OpsWorks::RegisterElasticIpResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ElasticIp => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::RegisterElasticIpResult

=head1 ATTRIBUTES

=head2 ElasticIp => Str

  

The Elastic IP address.











=cut

1;