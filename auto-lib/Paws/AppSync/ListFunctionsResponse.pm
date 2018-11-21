
package Paws::AppSync::ListFunctionsResponse;
  use Moose;
  has Functions => (is => 'ro', isa => 'ArrayRef[Paws::AppSync::FunctionConfiguration]', traits => ['NameInRequest'], request_name => 'functions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListFunctionsResponse

=head1 ATTRIBUTES


=head2 Functions => ArrayRef[L<Paws::AppSync::FunctionConfiguration>]

A list of C<Function> objects.


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 _request_id => Str


=cut

