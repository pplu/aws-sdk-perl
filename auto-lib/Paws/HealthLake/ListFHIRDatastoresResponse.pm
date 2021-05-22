
package Paws::HealthLake::ListFHIRDatastoresResponse;
  use Moose;
  has DatastorePropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::HealthLake::DatastoreProperties]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::ListFHIRDatastoresResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastorePropertiesList => ArrayRef[L<Paws::HealthLake::DatastoreProperties>]

All properties associated with the listed Data Stores.


=head2 NextToken => Str

Pagination token that can be used to retrieve the next page of results.


=head2 _request_id => Str


=cut

1;