
package Paws::Lightsail::GetOperationsForResourceResult;
  use Moose;
  has NextPageCount => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextPageCount' );
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Operation]', traits => ['Unwrapped'], xmlname => 'operations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetOperationsForResourceResult

=head1 ATTRIBUTES


=head2 NextPageCount => Str

Returns the number of pages of results that remain.


=head2 Operations => ArrayRef[L<Paws::Lightsail::Operation>]

An array of key-value pairs containing information about the results of
your get operations for resource request.


=head2 _request_id => Str


=cut

1;