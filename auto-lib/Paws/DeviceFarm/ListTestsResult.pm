
package Paws::DeviceFarm::ListTestsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Tests => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Test]', traits => ['NameInRequest'], request_name => 'tests' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListTestsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=head2 Tests => ArrayRef[L<Paws::DeviceFarm::Test>]

Information about the tests.


=head2 _request_id => Str


=cut

1;