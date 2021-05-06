
package Paws::ComprehendMedical::InferICD10CMResponse;
  use Moose;
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::ComprehendMedical::ICD10CMEntity]', required => 1);
  has ModelVersion => (is => 'ro', isa => 'Str');
  has PaginationToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::InferICD10CMResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entities => ArrayRef[L<Paws::ComprehendMedical::ICD10CMEntity>]

The medical conditions detected in the text linked to ICD-10-CM
concepts. If the action is successful, the service sends back an HTTP
200 response, as well as the entities detected.


=head2 ModelVersion => Str

The version of the model used to analyze the documents, in the format
I<n>.I<n>.I<n> You can use this information to track the model used for
a particular batch of documents.


=head2 PaginationToken => Str

If the result of the previous request to C<InferICD10CM> was truncated,
include the C<PaginationToken> to fetch the next page of medical
condition entities.


=head2 _request_id => Str


=cut

1;