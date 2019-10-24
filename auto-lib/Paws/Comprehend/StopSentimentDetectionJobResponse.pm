# Generated from json/callresult_class.tt

package Paws::Comprehend::StopSentimentDetectionJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw//;
  has JobId => (is => 'ro', isa => Str);
  has JobStatus => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobStatus' => {
                                'type' => 'Str'
                              },
               'JobId' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StopSentimentDetectionJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier of the sentiment detection job to stop.


=head2 JobStatus => Str

Either C<STOP_REQUESTED> if the job is currently running, or C<STOPPED>
if the job was previously stopped with the C<StopSentimentDetectionJob>
operation.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STOP_REQUESTED">, C<"STOPPED">
=head2 _request_id => Str


=cut

1;