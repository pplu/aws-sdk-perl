# Generated by default/object.tt
package Paws::HealthLake::DatastoreProperties;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DatastoreArn => (is => 'ro', isa => 'Str', required => 1);
  has DatastoreEndpoint => (is => 'ro', isa => 'Str', required => 1);
  has DatastoreId => (is => 'ro', isa => 'Str', required => 1);
  has DatastoreName => (is => 'ro', isa => 'Str');
  has DatastoreStatus => (is => 'ro', isa => 'Str', required => 1);
  has DatastoreTypeVersion => (is => 'ro', isa => 'Str', required => 1);
  has PreloadDataConfig => (is => 'ro', isa => 'Paws::HealthLake::PreloadDataConfig');

1;

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::DatastoreProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::HealthLake::DatastoreProperties object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., PreloadDataConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::HealthLake::DatastoreProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Displays the properties of the Data Store, including the ID, Arn, name,
and the status of the Data Store.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The time that a Data Store was created.


=head2 B<REQUIRED> DatastoreArn => Str

The Amazon Resource Name used in the creation of the Data Store.


=head2 B<REQUIRED> DatastoreEndpoint => Str

The AWS endpoint for the Data Store. Each Data Store will have it's own
endpoint with Data Store ID in the endpoint URL.


=head2 B<REQUIRED> DatastoreId => Str

The AWS-generated ID number for the Data Store.


=head2 DatastoreName => Str

The user-generated name for the Data Store.


=head2 B<REQUIRED> DatastoreStatus => Str

The status of the Data Store. Possible statuses are 'CREATING',
'ACTIVE', 'DELETING', or 'DELETED'.


=head2 B<REQUIRED> DatastoreTypeVersion => Str

The FHIR version. Only R4 version data is supported.


=head2 PreloadDataConfig => L<Paws::HealthLake::PreloadDataConfig>

The preloaded data configuration for the Data Store. Only data
preloaded from Synthea is supported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::HealthLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

