
package Paws::Robomaker::ListSimulationApplicationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_SimulationApplicationSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has SimulationApplicationSummaries => (is => 'ro', isa => ArrayRef[Robomaker_SimulationApplicationSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SimulationApplicationSummaries' => {
                                                     'class' => 'Paws::Robomaker::SimulationApplicationSummary',
                                                     'type' => 'ArrayRef[Robomaker_SimulationApplicationSummary]'
                                                   },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'SimulationApplicationSummaries' => 'simulationApplicationSummaries'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListSimulationApplicationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<ListSimulationApplications> request. When the results of a
C<ListRobot> request exceed C<maxResults>, this value can be used to
retrieve the next page of results. This value is C<null> when there are
no more results to return.


=head2 SimulationApplicationSummaries => ArrayRef[Robomaker_SimulationApplicationSummary]

A list of simulation application summaries that meet the criteria of
the request.


=head2 _request_id => Str


=cut

