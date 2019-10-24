# Generated from json/callresult_class.tt

package Paws::SSM::DescribePatchBaselinesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_PatchBaselineIdentity/;
  has BaselineIdentities => (is => 'ro', isa => ArrayRef[SSM_PatchBaselineIdentity]);
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
               'BaselineIdentities' => {
                                         'class' => 'Paws::SSM::PatchBaselineIdentity',
                                         'type' => 'ArrayRef[SSM_PatchBaselineIdentity]'
                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribePatchBaselinesResult

=head1 ATTRIBUTES


=head2 BaselineIdentities => ArrayRef[SSM_PatchBaselineIdentity]

An array of PatchBaselineIdentity elements.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;