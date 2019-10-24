# Generated from json/callresult_class.tt

package Paws::Comprehend::StartTopicsDetectionJobResponse;
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

Paws::Comprehend::StartTopicsDetectionJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier generated for the job. To get the status of the job, use
this identifier with the C<DescribeTopicDetectionJob> operation.


=head2 JobStatus => Str

The status of the job:

=over

=item *

SUBMITTED - The job has been received and is queued for processing.

=item *

IN_PROGRESS - Amazon Comprehend is processing the job.

=item *

COMPLETED - The job was successfully completed and the output is
available.

=item *

FAILED - The job did not complete. To get details, use the
C<DescribeTopicDetectionJob> operation.

=back


Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STOP_REQUESTED">, C<"STOPPED">
=head2 _request_id => Str


=cut

1;