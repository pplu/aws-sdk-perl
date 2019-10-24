# Generated from json/callresult_class.tt

package Paws::CloudTrail::LookupEventsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudTrail::Types qw/CloudTrail_Event/;
  has Events => (is => 'ro', isa => ArrayRef[CloudTrail_Event]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Events' => {
                             'class' => 'Paws::CloudTrail::Event',
                             'type' => 'ArrayRef[CloudTrail_Event]'
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

Paws::CloudTrail::LookupEventsResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[CloudTrail_Event]

A list of events returned based on the lookup attributes specified and
the CloudTrail event. The events list is sorted by time. The most
recent event is listed first.


=head2 NextToken => Str

The token to use to get the next page of results after a previous API
call. If the token does not appear, there are no more results to
return. The token must be passed in with the same parameters as the
previous call. For example, if the original call specified an
AttributeKey of 'Username' with a value of 'root', the call with
NextToken should include those same parameters.


=head2 _request_id => Str


=cut

1;