
package Paws::ES::DescribeElasticsearchDomainsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ES::Types qw/ES_ElasticsearchDomainStatus/;
  has DomainStatusList => (is => 'ro', isa => ArrayRef[ES_ElasticsearchDomainStatus], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DomainStatusList' => {
                                       'class' => 'Paws::ES::ElasticsearchDomainStatus',
                                       'type' => 'ArrayRef[ES_ElasticsearchDomainStatus]'
                                     }
             },
  'IsRequired' => {
                    'DomainStatusList' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeElasticsearchDomainsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainStatusList => ArrayRef[ES_ElasticsearchDomainStatus]

The status of the domains requested in the
C<DescribeElasticsearchDomains> request.


=head2 _request_id => Str


=cut

