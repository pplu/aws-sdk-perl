# Generated from json/callresult_class.tt

package Paws::Health::DescribeEventAggregatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Health::Types qw/Health_EventAggregate/;
  has EventAggregates => (is => 'ro', isa => ArrayRef[Health_EventAggregate]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'EventAggregates' => {
                                      'class' => 'Paws::Health::EventAggregate',
                                      'type' => 'ArrayRef[Health_EventAggregate]'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'EventAggregates' => 'eventAggregates'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEventAggregatesResponse

=head1 ATTRIBUTES


=head2 EventAggregates => ArrayRef[Health_EventAggregate]

The number of events in each category that meet the optional filter
criteria.


=head2 NextToken => Str

If the results of a search are large, only a portion of the results are
returned, and a C<nextToken> pagination token is returned in the
response. To retrieve the next batch of results, reissue the search
request and include the returned token. When all results have been
returned, the response does not contain a pagination token value.


=head2 _request_id => Str


=cut

1;