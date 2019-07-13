
package Paws::AppSync::UpdateFunctionResponse;
  use Moose;
  has FunctionConfiguration => (is => 'ro', isa => 'Paws::AppSync::FunctionConfiguration', traits => ['NameInRequest'], request_name => 'functionConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateFunctionResponse

=head1 ATTRIBUTES


=head2 FunctionConfiguration => L<Paws::AppSync::FunctionConfiguration>

The C<Function> object.


=head2 _request_id => Str


=cut

