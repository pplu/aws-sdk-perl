
package Paws::HealthLake::DeleteFHIRDatastore;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFHIRDatastore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::HealthLake::DeleteFHIRDatastoreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::DeleteFHIRDatastore - Arguments for method DeleteFHIRDatastore on L<Paws::HealthLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFHIRDatastore on the
L<Amazon HealthLake|Paws::HealthLake> service. Use the attributes of this class
as arguments to method DeleteFHIRDatastore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFHIRDatastore.

=head1 SYNOPSIS

    my $healthlake = Paws->service('HealthLake');
    my $DeleteFHIRDatastoreResponse = $healthlake->DeleteFHIRDatastore(
      DatastoreId => 'MyDatastoreId',    # OPTIONAL
    );

    # Results:
    my $DatastoreArn      = $DeleteFHIRDatastoreResponse->DatastoreArn;
    my $DatastoreEndpoint = $DeleteFHIRDatastoreResponse->DatastoreEndpoint;
    my $DatastoreId       = $DeleteFHIRDatastoreResponse->DatastoreId;
    my $DatastoreStatus   = $DeleteFHIRDatastoreResponse->DatastoreStatus;

    # Returns a L<Paws::HealthLake::DeleteFHIRDatastoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/healthlake/DeleteFHIRDatastore>

=head1 ATTRIBUTES


=head2 DatastoreId => Str

The AWS-generated ID for the Data Store to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFHIRDatastore in L<Paws::HealthLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

