# Generated from json/callresult_class.tt

package Paws::Glue::GetJobRunsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_JobRun/;
  has JobRuns => (is => 'ro', isa => ArrayRef[Glue_JobRun]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'JobRuns' => {
                              'type' => 'ArrayRef[Glue_JobRun]',
                              'class' => 'Paws::Glue::JobRun'
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

Paws::Glue::GetJobRunsResponse

=head1 ATTRIBUTES


=head2 JobRuns => ArrayRef[Glue_JobRun]

A list of job-run metadata objects.


=head2 NextToken => Str

A continuation token, if not all requested job runs have been returned.


=head2 _request_id => Str


=cut

1;