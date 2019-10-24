
package Paws::MQ::ListBrokersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MQ::Types qw/MQ_BrokerSummary/;
  has BrokerSummaries => (is => 'ro', isa => ArrayRef[MQ_BrokerSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BrokerSummaries' => {
                                      'class' => 'Paws::MQ::BrokerSummary',
                                      'type' => 'ArrayRef[MQ_BrokerSummary]'
                                    }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'BrokerSummaries' => 'brokerSummaries'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ListBrokersResponse

=head1 ATTRIBUTES


=head2 BrokerSummaries => ArrayRef[MQ_BrokerSummary]

A list of information about all brokers.


=head2 NextToken => Str

The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.


=head2 _request_id => Str


=cut

