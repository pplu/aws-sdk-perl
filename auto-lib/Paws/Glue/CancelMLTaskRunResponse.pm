# Generated from json/callresult_class.tt

package Paws::Glue::CancelMLTaskRunResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has Status => (is => 'ro', isa => Str);
  has TaskRunId => (is => 'ro', isa => Str);
  has TransformId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'TransformId' => {
                                  'type' => 'Str'
                                },
               'TaskRunId' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::CancelMLTaskRunResponse

=head1 ATTRIBUTES


=head2 Status => Str

The status for this run.

Valid values are: C<"STARTING">, C<"RUNNING">, C<"STOPPING">, C<"STOPPED">, C<"SUCCEEDED">, C<"FAILED">, C<"TIMEOUT">
=head2 TaskRunId => Str

The unique identifier for the task run.


=head2 TransformId => Str

The unique identifier of the machine learning transform.


=head2 _request_id => Str


=cut

1;