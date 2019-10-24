# Generated from callresult_class.tt

package Paws::CloudFormation::ListStackSetOperationsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudFormation::Types qw/CloudFormation_StackSetOperationSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Summaries => (is => 'ro', isa => ArrayRef[CloudFormation_StackSetOperationSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Summaries' => {
                                'class' => 'Paws::CloudFormation::StackSetOperationSummary',
                                'type' => 'ArrayRef[CloudFormation_StackSetOperationSummary]'
                              },
               'NextToken' => {
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
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStackSetOperationsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all results, C<NextToken> is set to a
token. To retrieve the next set of results, call
C<ListOperationResults> again and assign that token to the request
object's C<NextToken> parameter. If there are no remaining results,
C<NextToken> is set to C<null>.


=head2 Summaries => ArrayRef[CloudFormation_StackSetOperationSummary]

A list of C<StackSetOperationSummary> structures that contain summary
information about operations for the specified stack set.


=head2 _request_id => Str


=cut

