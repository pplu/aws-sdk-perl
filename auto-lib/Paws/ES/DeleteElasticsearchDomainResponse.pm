
package Paws::ES::DeleteElasticsearchDomainResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ES::Types qw/ES_ElasticsearchDomainStatus/;
  has DomainStatus => (is => 'ro', isa => ES_ElasticsearchDomainStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DomainStatus' => {
                                   'class' => 'Paws::ES::ElasticsearchDomainStatus',
                                   'type' => 'ES_ElasticsearchDomainStatus'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DeleteElasticsearchDomainResponse

=head1 ATTRIBUTES


=head2 DomainStatus => ES_ElasticsearchDomainStatus

The status of the Elasticsearch domain being deleted.


=head2 _request_id => Str


=cut

