
package Paws::HealthLake::ListFHIRDatastores;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::HealthLake::DatastoreFilter');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFHIRDatastores');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::HealthLake::ListFHIRDatastoresResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::ListFHIRDatastores - Arguments for method ListFHIRDatastores on L<Paws::HealthLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFHIRDatastores on the
L<Amazon HealthLake|Paws::HealthLake> service. Use the attributes of this class
as arguments to method ListFHIRDatastores.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFHIRDatastores.

=head1 SYNOPSIS

    my $healthlake = Paws->service('HealthLake');
    my $ListFHIRDatastoresResponse = $healthlake->ListFHIRDatastores(
      Filter => {
        CreatedAfter    => '1970-01-01T01:00:00',   # OPTIONAL
        CreatedBefore   => '1970-01-01T01:00:00',   # OPTIONAL
        DatastoreName   => 'MyDatastoreName',       # min: 1, max: 256; OPTIONAL
        DatastoreStatus =>
          'CREATING',    # values: CREATING, ACTIVE, DELETING, DELETED; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $DatastorePropertiesList =
      $ListFHIRDatastoresResponse->DatastorePropertiesList;
    my $NextToken = $ListFHIRDatastoresResponse->NextToken;

    # Returns a L<Paws::HealthLake::ListFHIRDatastoresResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/healthlake/ListFHIRDatastores>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::HealthLake::DatastoreFilter>

Lists all filters associated with a FHIR Data Store request.



=head2 MaxResults => Int

The maximum number of Data Stores returned in a single page of a
ListFHIRDatastoresRequest call.



=head2 NextToken => Str

Fetches the next page of Data Stores when results are paginated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFHIRDatastores in L<Paws::HealthLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

