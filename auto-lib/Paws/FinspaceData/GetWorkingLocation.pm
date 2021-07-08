
package Paws::FinspaceData::GetWorkingLocation;
  use Moose;
  has LocationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'locationType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkingLocation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workingLocationV1');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::GetWorkingLocationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::GetWorkingLocation - Arguments for method GetWorkingLocation on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkingLocation on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method GetWorkingLocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkingLocation.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $GetWorkingLocationResponse = $finspace -api->GetWorkingLocation(
      LocationType => 'INGESTION',    # OPTIONAL
    );

    # Results:
    my $S3Bucket = $GetWorkingLocationResponse->S3Bucket;
    my $S3Path   = $GetWorkingLocationResponse->S3Path;
    my $S3Uri    = $GetWorkingLocationResponse->S3Uri;

    # Returns a L<Paws::FinspaceData::GetWorkingLocationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/GetWorkingLocation>

=head1 ATTRIBUTES


=head2 LocationType => Str

Specify the type of the working location.

=over

=item *

C<SAGEMAKER> - Use the Amazon S3 location as a temporary location to
store data content when working with FinSpace Notebooks that run on
SageMaker studio.

=item *

C<INGESTION> - Use the Amazon S3 location as a staging location to copy
your data content and then use the location with the changeset creation
operation.

=back


Valid values are: C<"INGESTION">, C<"SAGEMAKER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkingLocation in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

