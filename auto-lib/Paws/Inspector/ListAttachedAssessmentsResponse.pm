
package Paws::Inspector::ListAttachedAssessmentsResponse;
  use Moose;
  has AssessmentArnList => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'assessmentArnList' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListAttachedAssessmentsResponse

=head1 ATTRIBUTES


=head2 AssessmentArnList => ArrayRef[Str]

A list of ARNs specifying the assessments returned by the action.



=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to 'null'.




=cut

1;