
package Paws::HealthLake::CreateFHIRDatastore;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DatastoreName => (is => 'ro', isa => 'Str');
  has DatastoreTypeVersion => (is => 'ro', isa => 'Str', required => 1);
  has PreloadDataConfig => (is => 'ro', isa => 'Paws::HealthLake::PreloadDataConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFHIRDatastore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::HealthLake::CreateFHIRDatastoreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::CreateFHIRDatastore - Arguments for method CreateFHIRDatastore on L<Paws::HealthLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFHIRDatastore on the
L<Amazon HealthLake|Paws::HealthLake> service. Use the attributes of this class
as arguments to method CreateFHIRDatastore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFHIRDatastore.

=head1 SYNOPSIS

    my $healthlake = Paws->service('HealthLake');
    my $CreateFHIRDatastoreResponse = $healthlake->CreateFHIRDatastore(
      DatastoreTypeVersion => 'R4',
      ClientToken          => 'MyClientTokenString',    # OPTIONAL
      DatastoreName        => 'MyDatastoreName',        # OPTIONAL
      PreloadDataConfig    => {
        PreloadDataType => 'SYNTHEA',                   # values: SYNTHEA

      },    # OPTIONAL
    );

    # Results:
    my $DatastoreArn      = $CreateFHIRDatastoreResponse->DatastoreArn;
    my $DatastoreEndpoint = $CreateFHIRDatastoreResponse->DatastoreEndpoint;
    my $DatastoreId       = $CreateFHIRDatastoreResponse->DatastoreId;
    my $DatastoreStatus   = $CreateFHIRDatastoreResponse->DatastoreStatus;

    # Returns a L<Paws::HealthLake::CreateFHIRDatastoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/healthlake/CreateFHIRDatastore>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Optional user provided token used for ensuring idempotency.



=head2 DatastoreName => Str

The user generated name for the Data Store.



=head2 B<REQUIRED> DatastoreTypeVersion => Str

The FHIR version of the Data Store. The only supported version is R4.

Valid values are: C<"R4">

=head2 PreloadDataConfig => L<Paws::HealthLake::PreloadDataConfig>

Optional parameter to preload data upon creation of the Data Store.
Currently, the only supported preloaded data is synthetic data
generated from Synthea.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFHIRDatastore in L<Paws::HealthLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

