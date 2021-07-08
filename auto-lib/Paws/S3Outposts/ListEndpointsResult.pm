
package Paws::S3Outposts::ListEndpointsResult;
  use Moose;
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::S3Outposts::Endpoint]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Outposts::ListEndpointsResult

=head1 ATTRIBUTES


=head2 Endpoints => ArrayRef[L<Paws::S3Outposts::Endpoint>]

Returns an array of endpoints associated with AWS Outpost.


=head2 NextToken => Str

The next endpoint returned in the list.


=head2 _request_id => Str


=cut

