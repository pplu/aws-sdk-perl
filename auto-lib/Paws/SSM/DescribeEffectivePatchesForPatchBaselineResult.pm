# Generated from json/callresult_class.tt

package Paws::SSM::DescribeEffectivePatchesForPatchBaselineResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_EffectivePatch/;
  has EffectivePatches => (is => 'ro', isa => ArrayRef[SSM_EffectivePatch]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'EffectivePatches' => {
                                       'class' => 'Paws::SSM::EffectivePatch',
                                       'type' => 'ArrayRef[SSM_EffectivePatch]'
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

Paws::SSM::DescribeEffectivePatchesForPatchBaselineResult

=head1 ATTRIBUTES


=head2 EffectivePatches => ArrayRef[SSM_EffectivePatch]

An array of patches and patch status.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;