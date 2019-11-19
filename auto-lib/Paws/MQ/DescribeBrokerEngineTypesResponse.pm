
package Paws::MQ::DescribeBrokerEngineTypesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::MQ::Types qw/MQ_BrokerEngineType/;
  has BrokerEngineTypes => (is => 'ro', isa => ArrayRef[MQ_BrokerEngineType]);
  has MaxResults => (is => 'ro', isa => Int);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'MaxResults' => 'maxResults',
                       'NextToken' => 'nextToken',
                       'BrokerEngineTypes' => 'brokerEngineTypes'
                     },
  'types' => {
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'BrokerEngineTypes' => {
                                        'type' => 'ArrayRef[MQ_BrokerEngineType]',
                                        'class' => 'Paws::MQ::BrokerEngineType'
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

Paws::MQ::DescribeBrokerEngineTypesResponse

=head1 ATTRIBUTES


=head2 BrokerEngineTypes => ArrayRef[MQ_BrokerEngineType]

List of available engine types and versions.


=head2 MaxResults => Int

Required. The maximum number of engine types that can be returned per
page (20 by default). This value must be an integer from 5 to 100.


=head2 NextToken => Str

The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.


=head2 _request_id => Str


=cut

