
package Paws::ES::DeleteElasticsearchDomainResponse;
  use Moose;
  has DomainStatus => (is => 'ro', isa => 'Paws::ES::ElasticsearchDomainStatus');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DeleteElasticsearchDomainResponse

=head1 ATTRIBUTES

=head2 DomainStatus => Paws::ES::ElasticsearchDomainStatus

  The status of the Elasticsearch domain being deleted.


=cut

