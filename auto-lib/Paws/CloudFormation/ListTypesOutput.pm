# Generated from callresult_class.tt

package Paws::CloudFormation::ListTypesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudFormation::Types qw/CloudFormation_TypeSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has TypeSummaries => (is => 'ro', isa => ArrayRef[CloudFormation_TypeSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'TypeSummaries' => {
                                    'class' => 'Paws::CloudFormation::TypeSummary',
                                    'type' => 'ArrayRef[CloudFormation_TypeSummary]'
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

Paws::CloudFormation::ListTypesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all of the remaining results,
C<NextToken> is set to a token. To retrieve the next set of results,
call this action again and assign that token to the request object's
C<NextToken> parameter. If the request returns all results,
C<NextToken> is set to C<null>.


=head2 TypeSummaries => ArrayRef[CloudFormation_TypeSummary]

A list of C<TypeSummary> structures that contain information about the
specified types.


=head2 _request_id => Str


=cut

