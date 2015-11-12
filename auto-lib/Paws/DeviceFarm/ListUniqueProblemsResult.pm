
package Paws::DeviceFarm::ListUniqueProblemsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has UniqueProblems => (is => 'ro', isa => 'Paws::DeviceFarm::UniqueProblemsByExecutionResultMap', traits => ['Unwrapped'], xmlname => 'uniqueProblems' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListUniqueProblemsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

  If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.

=head2 UniqueProblems => L<Paws::DeviceFarm::UniqueProblemsByExecutionResultMap>

  Information about the unique problems.

Allowed values include:

=over

=item *

ERRORED: An error condition.

=item *

FAILED: A failed condition.

=item *

SKIPPED: A skipped condition.

=item *

STOPPED: A stopped condition.

=item *

PASSED: A passing condition.

=item *

PENDING: A pending condition.

=item *

WARNED: A warning condition.

=back



=cut

1;