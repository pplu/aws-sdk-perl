
package Paws::Lightsail::GetOperationsForResourceResult;
  use Moose;
  has NextPageCount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageCount' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Operation]', traits => ['NameInRequest'], request_name => 'operations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetOperationsForResourceResult

=head1 ATTRIBUTES


=head2 NextPageCount => Str

(Deprecated) Returns the number of pages of results that remain.

In releases prior to June 12, 2017, this parameter returned C<null> by
the API. It is now deprecated, and the API returns the C<next page
token> parameter instead.


=head2 NextPageToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 Operations => ArrayRef[L<Paws::Lightsail::Operation>]

An array of key-value pairs containing information about the results of
your get operations for resource request.


=head2 _request_id => Str


=cut

1;