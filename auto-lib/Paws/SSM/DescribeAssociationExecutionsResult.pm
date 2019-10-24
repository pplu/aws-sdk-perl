# Generated from json/callresult_class.tt

package Paws::SSM::DescribeAssociationExecutionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_AssociationExecution/;
  has AssociationExecutions => (is => 'ro', isa => ArrayRef[SSM_AssociationExecution]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'AssociationExecutions' => {
                                            'class' => 'Paws::SSM::AssociationExecution',
                                            'type' => 'ArrayRef[SSM_AssociationExecution]'
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

Paws::SSM::DescribeAssociationExecutionsResult

=head1 ATTRIBUTES


=head2 AssociationExecutions => ArrayRef[SSM_AssociationExecution]

A list of the executions for the specified association ID.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;