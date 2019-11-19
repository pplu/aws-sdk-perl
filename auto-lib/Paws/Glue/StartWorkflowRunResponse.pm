# Generated from json/callresult_class.tt

package Paws::Glue::StartWorkflowRunResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has RunId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RunId' => {
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

Paws::Glue::StartWorkflowRunResponse

=head1 ATTRIBUTES


=head2 RunId => Str

An Id for the new run.


=head2 _request_id => Str


=cut

1;