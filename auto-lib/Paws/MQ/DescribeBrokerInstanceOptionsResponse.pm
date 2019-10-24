
package Paws::MQ::DescribeBrokerInstanceOptionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::MQ::Types qw/MQ_BrokerInstanceOption/;
  has BrokerInstanceOptions => (is => 'ro', isa => ArrayRef[MQ_BrokerInstanceOption]);
  has MaxResults => (is => 'ro', isa => Int);
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
               'BrokerInstanceOptions' => {
                                            'class' => 'Paws::MQ::BrokerInstanceOption',
                                            'type' => 'ArrayRef[MQ_BrokerInstanceOption]'
                                          },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'BrokerInstanceOptions' => 'brokerInstanceOptions',
                       'MaxResults' => 'maxResults'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DescribeBrokerInstanceOptionsResponse

=head1 ATTRIBUTES


=head2 BrokerInstanceOptions => ArrayRef[MQ_BrokerInstanceOption]

List of available broker instance options.


=head2 MaxResults => Int

Required. The maximum number of instance options that can be returned
per page (20 by default). This value must be an integer from 5 to 100.


=head2 NextToken => Str

The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.


=head2 _request_id => Str


=cut

