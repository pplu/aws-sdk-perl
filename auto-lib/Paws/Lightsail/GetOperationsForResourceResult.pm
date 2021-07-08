
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

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another
C<GetOperationsForResource> request and specify the next page token
using the C<pageToken> parameter.


=head2 Operations => ArrayRef[L<Paws::Lightsail::Operation>]

An array of objects that describe the result of the action, such as the
status of the request, the timestamp of the request, and the resources
affected by the request.


=head2 _request_id => Str


=cut

1;