
package Paws::HealthLake::DescribeFHIRExportJob;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str', required => 1);
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFHIRExportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::HealthLake::DescribeFHIRExportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::DescribeFHIRExportJob - Arguments for method DescribeFHIRExportJob on L<Paws::HealthLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFHIRExportJob on the
L<Amazon HealthLake|Paws::HealthLake> service. Use the attributes of this class
as arguments to method DescribeFHIRExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFHIRExportJob.

=head1 SYNOPSIS

    my $healthlake = Paws->service('HealthLake');
    my $DescribeFHIRExportJobResponse = $healthlake->DescribeFHIRExportJob(
      DatastoreId => 'MyDatastoreId',
      JobId       => 'MyJobId',

    );

    # Results:
    my $ExportJobProperties =
      $DescribeFHIRExportJobResponse->ExportJobProperties;

    # Returns a L<Paws::HealthLake::DescribeFHIRExportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/healthlake/DescribeFHIRExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreId => Str

The AWS generated ID for the Data Store from which files are being
exported from for an export job.



=head2 B<REQUIRED> JobId => Str

The AWS generated ID for an export job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFHIRExportJob in L<Paws::HealthLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

