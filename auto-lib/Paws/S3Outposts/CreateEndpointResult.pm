
package Paws::S3Outposts::CreateEndpointResult;
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Outposts::CreateEndpointResult

=head1 ATTRIBUTES


=head2 EndpointArn => Str

The Amazon Resource Name (ARN) of the endpoint.


=head2 _request_id => Str


=cut

