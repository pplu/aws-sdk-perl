
package Paws::Finspace::ListEnvironmentsResponse;
  use Moose;
  has Environments => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::Environment]', traits => ['NameInRequest'], request_name => 'environments');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::ListEnvironmentsResponse

=head1 ATTRIBUTES


=head2 Environments => ArrayRef[L<Paws::Finspace::Environment>]

A list of all of your FinSpace environments.


=head2 NextToken => Str

A token that you can use in a subsequent call to retrieve the next set
of results.


=head2 _request_id => Str


=cut

