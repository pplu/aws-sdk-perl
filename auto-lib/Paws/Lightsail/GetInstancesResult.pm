
package Paws::Lightsail::GetInstancesResult;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Instance]', traits => ['NameInRequest'], request_name => 'instances' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstancesResult

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::Lightsail::Instance>]

An array of key-value pairs containing information about your
instances.


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another C<GetInstances>
request and specify the next page token using the C<pageToken>
parameter.


=head2 _request_id => Str


=cut

1;