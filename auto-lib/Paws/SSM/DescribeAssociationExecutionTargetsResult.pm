# Generated from json/callresult_class.tt

package Paws::SSM::DescribeAssociationExecutionTargetsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_AssociationExecutionTarget/;
  has AssociationExecutionTargets => (is => 'ro', isa => ArrayRef[SSM_AssociationExecutionTarget]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AssociationExecutionTargets' => {
                                                  'type' => 'ArrayRef[SSM_AssociationExecutionTarget]',
                                                  'class' => 'Paws::SSM::AssociationExecutionTarget'
                                                },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::SSM::DescribeAssociationExecutionTargetsResult

=head1 ATTRIBUTES


=head2 AssociationExecutionTargets => ArrayRef[SSM_AssociationExecutionTarget]

Information about the execution.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;