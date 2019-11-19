# Generated from json/callresult_class.tt

package Paws::SSM::CreatePatchBaselineResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has BaselineId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BaselineId' => {
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

Paws::SSM::CreatePatchBaselineResult

=head1 ATTRIBUTES


=head2 BaselineId => Str

The ID of the created patch baseline.


=head2 _request_id => Str


=cut

1;