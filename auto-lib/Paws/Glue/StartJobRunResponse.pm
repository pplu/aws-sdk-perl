# Generated from json/callresult_class.tt

package Paws::Glue::StartJobRunResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has JobRunId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobRunId' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartJobRunResponse

=head1 ATTRIBUTES


=head2 JobRunId => Str

The ID assigned to this job run.


=head2 _request_id => Str


=cut

1;