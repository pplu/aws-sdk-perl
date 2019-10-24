# Generated from json/callresult_class.tt

package Paws::SSM::DeletePatchBaselineResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has BaselineId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BaselineId' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeletePatchBaselineResult

=head1 ATTRIBUTES


=head2 BaselineId => Str

The ID of the deleted patch baseline.


=head2 _request_id => Str


=cut

1;