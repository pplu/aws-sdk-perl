# Generated from json/callresult_class.tt

package Paws::Health::DescribeEventsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Health::Types qw/Health_Event/;
  has Events => (is => 'ro', isa => ArrayRef[Health_Event]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Events' => 'events',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'Events' => {
                             'class' => 'Paws::Health::Event',
                             'type' => 'ArrayRef[Health_Event]'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEventsResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[Health_Event]

The events that match the specified filter criteria.


=head2 NextToken => Str

If the results of a search are large, only a portion of the results are
returned, and a C<nextToken> pagination token is returned in the
response. To retrieve the next batch of results, reissue the search
request and include the returned token. When all results have been
returned, the response does not contain a pagination token value.


=head2 _request_id => Str


=cut

1;