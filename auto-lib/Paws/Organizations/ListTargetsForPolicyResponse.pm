# Generated from json/callresult_class.tt

package Paws::Organizations::ListTargetsForPolicyResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Organizations::Types qw/Organizations_PolicyTargetSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Targets => (is => 'ro', isa => ArrayRef[Organizations_PolicyTargetSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Targets' => {
                              'class' => 'Paws::Organizations::PolicyTargetSummary',
                              'type' => 'ArrayRef[Organizations_PolicyTargetSummary]'
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


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListTargetsForPolicyResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 Targets => ArrayRef[Organizations_PolicyTargetSummary]

A list of structures, each of which contains details about one of the
entities to which the specified policy is attached.


=head2 _request_id => Str


=cut

1;