
package Paws::Support::DescribeCommunicationsResponse;
  use Moose;
  has Communications => (is => 'ro', isa => 'ArrayRef[Paws::Support::Communication]', traits => ['Unwrapped'], xmlname => 'communications' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeCommunicationsResponse

=head1 ATTRIBUTES

=head2 Communications => ArrayRef[L<Paws::Support::Communication>]

  The communications for the case.
=head2 NextToken => Str

  A resumption point for pagination.


=cut

1;