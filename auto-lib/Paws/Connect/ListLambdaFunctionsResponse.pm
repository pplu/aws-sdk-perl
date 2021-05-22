
package Paws::Connect::ListLambdaFunctionsResponse;
  use Moose;
  has LambdaFunctions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListLambdaFunctionsResponse

=head1 ATTRIBUTES


=head2 LambdaFunctions => ArrayRef[Str|Undef]

The Lambdafunction ARNs associated with the specified instance.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

