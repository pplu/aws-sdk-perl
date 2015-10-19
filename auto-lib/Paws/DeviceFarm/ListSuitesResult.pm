
package Paws::DeviceFarm::ListSuitesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has Suites => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Suite]', traits => ['Unwrapped'], xmlname => 'suites' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListSuitesResult

=head1 ATTRIBUTES

=head2 NextToken => Str

  If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.
=head2 Suites => ArrayRef[L<Paws::DeviceFarm::Suite>]

  Information about the suites.


=cut

1;