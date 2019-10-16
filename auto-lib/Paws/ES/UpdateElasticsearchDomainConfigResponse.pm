
package Paws::ES::UpdateElasticsearchDomainConfigResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ES::Types qw/ES_ElasticsearchDomainConfig/;
  has DomainConfig => (is => 'ro', isa => ES_ElasticsearchDomainConfig, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DomainConfig' => {
                                   'class' => 'Paws::ES::ElasticsearchDomainConfig',
                                   'type' => 'ES_ElasticsearchDomainConfig'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::UpdateElasticsearchDomainConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainConfig => ES_ElasticsearchDomainConfig

The status of the updated Elasticsearch domain.


=head2 _request_id => Str


=cut

