
package Paws::Lambda::GetFunctionResponse;
  use Moose;
  has Code => (is => 'ro', isa => 'Paws::Lambda::FunctionCodeLocation');
  has Configuration => (is => 'ro', isa => 'Paws::Lambda::FunctionConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetFunctionResponse

=head1 ATTRIBUTES


=head2 Code => L<Paws::Lambda::FunctionCodeLocation>




=head2 Configuration => L<Paws::Lambda::FunctionConfiguration>




=head2 _request_id => Str


=cut

