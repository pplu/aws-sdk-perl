
package Paws::HealthLake::DescribeFHIRDatastore;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFHIRDatastore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::HealthLake::DescribeFHIRDatastoreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::DescribeFHIRDatastore - Arguments for method DescribeFHIRDatastore on L<Paws::HealthLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFHIRDatastore on the
L<Amazon HealthLake|Paws::HealthLake> service. Use the attributes of this class
as arguments to method DescribeFHIRDatastore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFHIRDatastore.

=head1 SYNOPSIS

    my $healthlake = Paws->service('HealthLake');
    my $DescribeFHIRDatastoreResponse = $healthlake->DescribeFHIRDatastore(
      DatastoreId => 'MyDatastoreId',    # OPTIONAL
    );

    # Results:
    my $DatastoreProperties =
      $DescribeFHIRDatastoreResponse->DatastoreProperties;

    # Returns a L<Paws::HealthLake::DescribeFHIRDatastoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/healthlake/DescribeFHIRDatastore>

=head1 ATTRIBUTES


=head2 DatastoreId => Str

The AWS-generated Data Store id. This is part of the
E<lsquo>CreateFHIRDatastoreE<rsquo> output.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFHIRDatastore in L<Paws::HealthLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

