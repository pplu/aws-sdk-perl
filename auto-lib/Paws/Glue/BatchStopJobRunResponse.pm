# Generated from json/callresult_class.tt

package Paws::Glue::BatchStopJobRunResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_BatchStopJobRunSuccessfulSubmission Glue_BatchStopJobRunError/;
  has Errors => (is => 'ro', isa => ArrayRef[Glue_BatchStopJobRunError]);
  has SuccessfulSubmissions => (is => 'ro', isa => ArrayRef[Glue_BatchStopJobRunSuccessfulSubmission]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SuccessfulSubmissions' => {
                                            'type' => 'ArrayRef[Glue_BatchStopJobRunSuccessfulSubmission]',
                                            'class' => 'Paws::Glue::BatchStopJobRunSuccessfulSubmission'
                                          },
               'Errors' => {
                             'class' => 'Paws::Glue::BatchStopJobRunError',
                             'type' => 'ArrayRef[Glue_BatchStopJobRunError]'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchStopJobRunResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[Glue_BatchStopJobRunError]

A list of the errors that were encountered in trying to stop
C<JobRuns>, including the C<JobRunId> for which each error was
encountered and details about the error.


=head2 SuccessfulSubmissions => ArrayRef[Glue_BatchStopJobRunSuccessfulSubmission]

A list of the JobRuns that were successfully submitted for stopping.


=head2 _request_id => Str


=cut

1;