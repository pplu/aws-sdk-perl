# Generated from json/callresult_class.tt

package Paws::SSM::DescribeInstancePatchStatesForPatchGroupResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_InstancePatchState/;
  has InstancePatchStates => (is => 'ro', isa => ArrayRef[SSM_InstancePatchState]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'InstancePatchStates' => {
                                          'type' => 'ArrayRef[SSM_InstancePatchState]',
                                          'class' => 'Paws::SSM::InstancePatchState'
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

Paws::SSM::DescribeInstancePatchStatesForPatchGroupResult

=head1 ATTRIBUTES


=head2 InstancePatchStates => ArrayRef[SSM_InstancePatchState]

The high-level patch state for the requested instances.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;