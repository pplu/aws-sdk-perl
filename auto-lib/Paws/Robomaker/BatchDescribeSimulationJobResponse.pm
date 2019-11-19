
package Paws::Robomaker::BatchDescribeSimulationJobResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Robomaker::Types qw/Robomaker_SimulationJob/;
  has Jobs => (is => 'ro', isa => ArrayRef[Robomaker_SimulationJob]);
  has UnprocessedJobs => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UnprocessedJobs' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'Jobs' => {
                           'class' => 'Paws::Robomaker::SimulationJob',
                           'type' => 'ArrayRef[Robomaker_SimulationJob]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Jobs' => 'jobs',
                       'UnprocessedJobs' => 'unprocessedJobs'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::BatchDescribeSimulationJobResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[Robomaker_SimulationJob]

A list of simulation jobs.


=head2 UnprocessedJobs => ArrayRef[Str|Undef]

A list of unprocessed simulation job Amazon Resource Names (ARNs).


=head2 _request_id => Str


=cut

