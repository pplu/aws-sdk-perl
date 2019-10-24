
package Paws::Connect::ListRoutingProfilesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Connect::Types qw/Connect_RoutingProfileSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has RoutingProfileSummaryList => (is => 'ro', isa => ArrayRef[Connect_RoutingProfileSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'RoutingProfileSummaryList' => {
                                                'class' => 'Paws::Connect::RoutingProfileSummary',
                                                'type' => 'ArrayRef[Connect_RoutingProfileSummary]'
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

Paws::Connect::ListRoutingProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A string returned in the response. Use the value returned in the
response as the value of the NextToken in a subsequent request to
retrieve the next set of results.


=head2 RoutingProfileSummaryList => ArrayRef[Connect_RoutingProfileSummary]

An array of C<RoutingProfileSummary> objects that include the ARN, Id,
and Name of the routing profile.


=head2 _request_id => Str


=cut

