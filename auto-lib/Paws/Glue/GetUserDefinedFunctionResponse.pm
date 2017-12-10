
package Paws::Glue::GetUserDefinedFunctionResponse;
  use Moose;
  has UserDefinedFunction => (is => 'ro', isa => 'Paws::Glue::UserDefinedFunction');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetUserDefinedFunctionResponse

=head1 ATTRIBUTES


=head2 UserDefinedFunction => L<Paws::Glue::UserDefinedFunction>

The requested function definition.


=head2 _request_id => Str


=cut

1;