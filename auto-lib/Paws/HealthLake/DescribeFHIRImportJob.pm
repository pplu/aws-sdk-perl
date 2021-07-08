
package Paws::HealthLake::DescribeFHIRImportJob;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str', required => 1);
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFHIRImportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::HealthLake::DescribeFHIRImportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::DescribeFHIRImportJob - Arguments for method DescribeFHIRImportJob on L<Paws::HealthLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFHIRImportJob on the
L<Amazon HealthLake|Paws::HealthLake> service. Use the attributes of this class
as arguments to method DescribeFHIRImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFHIRImportJob.

=head1 SYNOPSIS

    my $healthlake = Paws->service('HealthLake');
    my $DescribeFHIRImportJobResponse = $healthlake->DescribeFHIRImportJob(
      DatastoreId => 'MyDatastoreId',
      JobId       => 'MyJobId',

    );

    # Results:
    my $ImportJobProperties =
      $DescribeFHIRImportJobResponse->ImportJobProperties;

    # Returns a L<Paws::HealthLake::DescribeFHIRImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/healthlake/DescribeFHIRImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreId => Str

The AWS-generated ID of the Data Store.



=head2 B<REQUIRED> JobId => Str

The AWS-generated job ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFHIRImportJob in L<Paws::HealthLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

