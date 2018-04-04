
package Paws::Lambda::GetFunctionResponse;
  use Moose;
  has Code => (is => 'ro', isa => 'Paws::Lambda::FunctionCodeLocation');
  has Concurrency => (is => 'ro', isa => 'Paws::Lambda::Concurrency');
  has Configuration => (is => 'ro', isa => 'Paws::Lambda::FunctionConfiguration');
  has Tags => (is => 'ro', isa => 'Paws::Lambda::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetFunctionResponse

=head1 ATTRIBUTES


=head2 Code => L<Paws::Lambda::FunctionCodeLocation>




=head2 Concurrency => L<Paws::Lambda::Concurrency>

The concurrent execution limit set for this function. For more
information, see concurrent-executions.


=head2 Configuration => L<Paws::Lambda::FunctionConfiguration>




=head2 Tags => L<Paws::Lambda::Tags>

Returns the list of tags associated with the function. For more
information, see Tagging Lambda Functions
(http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the B<AWS
Lambda Developer Guide>.


=head2 _request_id => Str


=cut

