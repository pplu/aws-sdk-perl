# Generated from json/callresult_class.tt

package Paws::Glue::GetMLTaskRunsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_TaskRun/;
  has NextToken => (is => 'ro', isa => Str);
  has TaskRuns => (is => 'ro', isa => ArrayRef[Glue_TaskRun]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskRuns' => {
                               'type' => 'ArrayRef[Glue_TaskRun]',
                               'class' => 'Paws::Glue::TaskRun'
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


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetMLTaskRunsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token, if more results are available.


=head2 TaskRuns => ArrayRef[Glue_TaskRun]

A list of task runs that are associated with the transform.


=head2 _request_id => Str


=cut

1;