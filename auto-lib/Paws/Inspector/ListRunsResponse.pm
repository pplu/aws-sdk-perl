
package Paws::Inspector::ListRunsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has RunArnList => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'runArnList' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListRunsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

  When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to 'null'.

=head2 RunArnList => ArrayRef[Str]

  A list of ARNs specifying the assessment runs returned by the action.


=cut

1;