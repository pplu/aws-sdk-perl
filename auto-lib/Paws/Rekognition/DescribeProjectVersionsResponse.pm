
package Paws::Rekognition::DescribeProjectVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProjectVersionDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::ProjectVersionDescription]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DescribeProjectVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the previous response was incomplete (because there is more results
to retrieve), Amazon Rekognition Custom Labels returns a pagination
token in the response. You can use this pagination token to retrieve
the next set of results.


=head2 ProjectVersionDescriptions => ArrayRef[L<Paws::Rekognition::ProjectVersionDescription>]

A list of model descriptions. The list is sorted by the creation date
and time of the model versions, latest to earliest.


=head2 _request_id => Str


=cut

1;