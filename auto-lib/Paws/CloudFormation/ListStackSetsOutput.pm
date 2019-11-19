# Generated from callresult_class.tt

package Paws::CloudFormation::ListStackSetsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudFormation::Types qw/CloudFormation_StackSetSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Summaries => (is => 'ro', isa => ArrayRef[CloudFormation_StackSetSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Summaries' => {
                                'type' => 'ArrayRef[CloudFormation_StackSetSummary]',
                                'class' => 'Paws::CloudFormation::StackSetSummary'
                              },
               'NextToken' => {
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

Paws::CloudFormation::ListStackSetsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all of the remaining results,
C<NextToken> is set to a token. To retrieve the next set of results,
call C<ListStackInstances> again and assign that token to the request
object's C<NextToken> parameter. If the request returns all results,
C<NextToken> is set to C<null>.


=head2 Summaries => ArrayRef[CloudFormation_StackSetSummary]

A list of C<StackSetSummary> structures that contain information about
the user's stack sets.


=head2 _request_id => Str


=cut

