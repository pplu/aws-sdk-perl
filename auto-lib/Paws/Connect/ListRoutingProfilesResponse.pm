
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
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RoutingProfileSummaryList' => {
                                                'class' => 'Paws::Connect::RoutingProfileSummary',
                                                'type' => 'ArrayRef[Connect_RoutingProfileSummary]'
                                              },
               'NextToken' => {
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

If there are additional results, this is the token for the next set of
results.


=head2 RoutingProfileSummaryList => ArrayRef[Connect_RoutingProfileSummary]

Information about the routing profiles.


=head2 _request_id => Str


=cut

