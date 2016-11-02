
package Paws::ES::CreateElasticsearchDomainResponse;
  use Moose;
  has DomainStatus => (is => 'ro', isa => 'Paws::ES::ElasticsearchDomainStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::CreateElasticsearchDomainResponse

=head1 ATTRIBUTES


=head2 DomainStatus => L<Paws::ES::ElasticsearchDomainStatus>

The status of the newly created Elasticsearch domain.


=head2 _request_id => Str


=cut

