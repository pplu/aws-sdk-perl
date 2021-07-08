
package Paws::LookoutVision::ListProjectsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Projects => (is => 'ro', isa => 'ArrayRef[Paws::LookoutVision::ProjectMetadata]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::ListProjectsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Lookout for Vision returns this
token that you can use in the subsequent request to retrieve the next
set of projects.


=head2 Projects => ArrayRef[L<Paws::LookoutVision::ProjectMetadata>]

A list of projects in your AWS account.


=head2 _request_id => Str


=cut

