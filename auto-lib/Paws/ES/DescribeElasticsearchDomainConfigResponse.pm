
package Paws::ES::DescribeElasticsearchDomainConfigResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ES::Types qw/ES_ElasticsearchDomainConfig/;
  has DomainConfig => (is => 'ro', isa => ES_ElasticsearchDomainConfig, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DomainConfig' => 1
                  },
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

Paws::ES::DescribeElasticsearchDomainConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainConfig => ES_ElasticsearchDomainConfig

The configuration information of the domain requested in the
C<DescribeElasticsearchDomainConfig> request.


=head2 _request_id => Str


=cut

