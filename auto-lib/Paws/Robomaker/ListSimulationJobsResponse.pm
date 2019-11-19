
package Paws::Robomaker::ListSimulationJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_SimulationJobSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has SimulationJobSummaries => (is => 'ro', isa => ArrayRef[Robomaker_SimulationJobSummary], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SimulationJobSummaries' => 'simulationJobSummaries',
                       'NextToken' => 'nextToken'
                     },
  'IsRequired' => {
                    'SimulationJobSummaries' => 1
                  },
  'types' => {
               'SimulationJobSummaries' => {
                                             'type' => 'ArrayRef[Robomaker_SimulationJobSummary]',
                                             'class' => 'Paws::Robomaker::SimulationJobSummary'
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListSimulationJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListSimulationJobs>
request. When the results of a C<ListRobot> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 B<REQUIRED> SimulationJobSummaries => ArrayRef[Robomaker_SimulationJobSummary]

A list of simulation job summaries that meet the criteria of the
request.


=head2 _request_id => Str


=cut

