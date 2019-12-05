
package Paws::Rekognition::DescribeProjectsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProjectDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::ProjectDescription]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DescribeProjectsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the previous response was incomplete (because there is more results
to retrieve), Amazon Rekognition Custom Labels returns a pagination
token in the response. You can use this pagination token to retrieve
the next set of results.


=head2 ProjectDescriptions => ArrayRef[L<Paws::Rekognition::ProjectDescription>]

A list of project descriptions. The list is sorted by the date and time
the projects are created.


=head2 _request_id => Str


=cut

1;