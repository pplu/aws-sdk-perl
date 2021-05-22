
package Paws::HealthLake::DeleteFHIRDatastoreResponse;
  use Moose;
  has DatastoreArn => (is => 'ro', isa => 'Str', required => 1);
  has DatastoreEndpoint => (is => 'ro', isa => 'Str', required => 1);
  has DatastoreId => (is => 'ro', isa => 'Str', required => 1);
  has DatastoreStatus => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::DeleteFHIRDatastoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreArn => Str

The Amazon Resource Name (ARN) that gives Amazon HealthLake access
permission.


=head2 B<REQUIRED> DatastoreEndpoint => Str

The AWS endpoint for the Data Store the user has requested to be
deleted.


=head2 B<REQUIRED> DatastoreId => Str

The AWS-generated ID for the Data Store to be deleted.


=head2 B<REQUIRED> DatastoreStatus => Str

The status of the Data Store that the user has requested to be deleted.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">
=head2 _request_id => Str


=cut

1;