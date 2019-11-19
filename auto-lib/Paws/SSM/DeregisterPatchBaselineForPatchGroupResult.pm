# Generated from json/callresult_class.tt

package Paws::SSM::DeregisterPatchBaselineForPatchGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has BaselineId => (is => 'ro', isa => Str);
  has PatchGroup => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BaselineId' => {
                                 'type' => 'Str'
                               },
               'PatchGroup' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeregisterPatchBaselineForPatchGroupResult

=head1 ATTRIBUTES


=head2 BaselineId => Str

The ID of the patch baseline the patch group was deregistered from.


=head2 PatchGroup => Str

The name of the patch group deregistered from the patch baseline.


=head2 _request_id => Str


=cut

1;