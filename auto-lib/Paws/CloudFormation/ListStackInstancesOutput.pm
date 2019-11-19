# Generated from callresult_class.tt

package Paws::CloudFormation::ListStackInstancesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudFormation::Types qw/CloudFormation_StackInstanceSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Summaries => (is => 'ro', isa => ArrayRef[CloudFormation_StackInstanceSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Summaries' => {
                                'class' => 'Paws::CloudFormation::StackInstanceSummary',
                                'type' => 'ArrayRef[CloudFormation_StackInstanceSummary]'
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

Paws::CloudFormation::ListStackInstancesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all of the remaining results,
C<NextToken> is set to a token. To retrieve the next set of results,
call C<ListStackInstances> again and assign that token to the request
object's C<NextToken> parameter. If the request returns all results,
C<NextToken> is set to C<null>.


=head2 Summaries => ArrayRef[CloudFormation_StackInstanceSummary]

A list of C<StackInstanceSummary> structures that contain information
about the specified stack instances.


=head2 _request_id => Str


=cut

