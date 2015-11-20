
package Paws::Inspector::ListApplicationsResponse;
  use Moose;
  has ApplicationArnList => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'applicationArnList' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 ApplicationArnList => ArrayRef[Str]

  A list of ARNs specifying the applications returned by the action.

=head2 NextToken => Str

  When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to 'null'.


=cut

1;