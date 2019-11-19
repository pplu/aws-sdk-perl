# Generated from json/callresult_class.tt

package Paws::SSM::DescribePatchGroupsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_PatchGroupPatchBaselineMapping/;
  has Mappings => (is => 'ro', isa => ArrayRef[SSM_PatchGroupPatchBaselineMapping]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Mappings' => {
                               'type' => 'ArrayRef[SSM_PatchGroupPatchBaselineMapping]',
                               'class' => 'Paws::SSM::PatchGroupPatchBaselineMapping'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribePatchGroupsResult

=head1 ATTRIBUTES


=head2 Mappings => ArrayRef[SSM_PatchGroupPatchBaselineMapping]

Each entry in the array contains:

PatchGroup: string (between 1 and 256 characters, Regex:
^([\p{L}\p{Z}\p{N}_.:/=+\-@]*)$)

PatchBaselineIdentity: A PatchBaselineIdentity element.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;