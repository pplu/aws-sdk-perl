
package Paws::ES::DescribeElasticsearchDomainResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ES::Types qw/ES_ElasticsearchDomainStatus/;
  has DomainStatus => (is => 'ro', isa => ES_ElasticsearchDomainStatus, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DomainStatus' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DomainStatus' => {
                                   'type' => 'ES_ElasticsearchDomainStatus',
                                   'class' => 'Paws::ES::ElasticsearchDomainStatus'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeElasticsearchDomainResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainStatus => ES_ElasticsearchDomainStatus

The current status of the Elasticsearch domain.


=head2 _request_id => Str


=cut

