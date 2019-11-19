# Generated from callresult_class.tt

package Paws::CloudFormation::ListChangeSetsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudFormation::Types qw/CloudFormation_ChangeSetSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Summaries => (is => 'ro', isa => ArrayRef[CloudFormation_ChangeSetSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Summaries' => {
                                'class' => 'Paws::CloudFormation::ChangeSetSummary',
                                'type' => 'ArrayRef[CloudFormation_ChangeSetSummary]'
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

Paws::CloudFormation::ListChangeSetsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the output exceeds 1 MB, a string that identifies the next page of
change sets. If there is no additional page, this value is null.


=head2 Summaries => ArrayRef[CloudFormation_ChangeSetSummary]

A list of C<ChangeSetSummary> structures that provides the ID and
status of each change set for the specified stack.


=head2 _request_id => Str


=cut

