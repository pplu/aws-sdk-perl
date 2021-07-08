
package Paws::HealthLake::DescribeFHIRDatastoreResponse;
  use Moose;
  has DatastoreProperties => (is => 'ro', isa => 'Paws::HealthLake::DatastoreProperties', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::DescribeFHIRDatastoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreProperties => L<Paws::HealthLake::DatastoreProperties>

All properties associated with a Data Store, including the Data Store
ID, Data Store ARN, Data Store name, Data Store status, created at,
Data Store type version, and Data Store endpoint.


=head2 _request_id => Str


=cut

1;