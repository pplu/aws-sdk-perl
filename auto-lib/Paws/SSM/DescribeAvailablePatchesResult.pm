# Generated from json/callresult_class.tt

package Paws::SSM::DescribeAvailablePatchesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_Patch/;
  has NextToken => (is => 'ro', isa => Str);
  has Patches => (is => 'ro', isa => ArrayRef[SSM_Patch]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Patches' => {
                              'type' => 'ArrayRef[SSM_Patch]',
                              'class' => 'Paws::SSM::Patch'
                            },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeAvailablePatchesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Patches => ArrayRef[SSM_Patch]

An array of patches. Each entry in the array is a patch structure.


=head2 _request_id => Str


=cut

1;