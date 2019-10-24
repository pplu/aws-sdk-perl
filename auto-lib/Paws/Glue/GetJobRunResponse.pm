# Generated from json/callresult_class.tt

package Paws::Glue::GetJobRunResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_JobRun/;
  has JobRun => (is => 'ro', isa => Glue_JobRun);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobRun' => {
                             'class' => 'Paws::Glue::JobRun',
                             'type' => 'Glue_JobRun'
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

Paws::Glue::GetJobRunResponse

=head1 ATTRIBUTES


=head2 JobRun => Glue_JobRun

The requested job-run metadata.


=head2 _request_id => Str


=cut

1;