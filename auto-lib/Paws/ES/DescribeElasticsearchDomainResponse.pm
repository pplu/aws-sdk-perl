
package Paws::ES::DescribeElasticsearchDomainResponse;
  use Moose;
  has DomainStatus => (is => 'ro', isa => 'Paws::ES::ElasticsearchDomainStatus', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeElasticsearchDomainResponse

=head1 ATTRIBUTES

=head2 B<REQUIRED> DomainStatus => Paws::ES::ElasticsearchDomainStatus

  The current status of the Elasticsearch domain.


=cut

