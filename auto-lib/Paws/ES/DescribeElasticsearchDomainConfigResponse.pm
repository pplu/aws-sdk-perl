
package Paws::ES::DescribeElasticsearchDomainConfigResponse;
  use Moose;
  has DomainConfig => (is => 'ro', isa => 'Paws::ES::ElasticsearchDomainConfig', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeElasticsearchDomainConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainConfig => L<Paws::ES::ElasticsearchDomainConfig>

The configuration information of the domain requested in the
C<DescribeElasticsearchDomainConfig> request.


=head2 _request_id => Str


=cut

