
package Paws::WorkLink::ListFleetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkLink::Types qw/WorkLink_FleetSummary/;
  has FleetSummaryList => (is => 'ro', isa => ArrayRef[WorkLink_FleetSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FleetSummaryList' => {
                                       'class' => 'Paws::WorkLink::FleetSummary',
                                       'type' => 'ArrayRef[WorkLink_FleetSummary]'
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

Paws::WorkLink::ListFleetsResponse

=head1 ATTRIBUTES


=head2 FleetSummaryList => ArrayRef[WorkLink_FleetSummary]

The summary list of the fleets.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

