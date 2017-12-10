
package Paws::Glue::GetUserDefinedFunctionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has UserDefinedFunctions => (is => 'ro', isa => 'ArrayRef[Paws::Glue::UserDefinedFunction]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetUserDefinedFunctionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if the list of functions returned does not
include the last requested function.


=head2 UserDefinedFunctions => ArrayRef[L<Paws::Glue::UserDefinedFunction>]

A list of requested function definitions.


=head2 _request_id => Str


=cut

1;