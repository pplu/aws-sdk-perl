
package Paws::HealthLake::CreateFHIRDatastoreResponse;
  use Moose;
  has DatastoreArn => (is => 'ro', isa => 'Str', required => 1);
  has DatastoreEndpoint => (is => 'ro', isa => 'Str', required => 1);
  has DatastoreId => (is => 'ro', isa => 'Str', required => 1);
  has DatastoreStatus => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::CreateFHIRDatastoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreArn => Str

The datastore ARN is generated during the creation of the Data Store
and can be found in the output from the initial Data Store creation
call.


=head2 B<REQUIRED> DatastoreEndpoint => Str

The AWS endpoint for the created Data Store. For preview, only
US-east-1 endpoints are supported.


=head2 B<REQUIRED> DatastoreId => Str

The AWS-generated Data Store id. This id is in the output from the
initial Data Store creation call.


=head2 B<REQUIRED> DatastoreStatus => Str

The status of the FHIR Data Store. Possible statuses are
E<lsquo>CREATINGE<rsquo>, E<lsquo>ACTIVEE<rsquo>,
E<lsquo>DELETINGE<rsquo>, E<lsquo>DELETEDE<rsquo>.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">
=head2 _request_id => Str


=cut

1;