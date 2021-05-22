
package Paws::LookoutVision::CreateDataset;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has DatasetSource => (is => 'ro', isa => 'Paws::LookoutVision::DatasetSource');
  has DatasetType => (is => 'ro', isa => 'Str', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-11-20/projects/{projectName}/datasets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutVision::CreateDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::CreateDataset - Arguments for method CreateDataset on L<Paws::LookoutVision>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataset on the
L<Amazon Lookout for Vision|Paws::LookoutVision> service. Use the attributes of this class
as arguments to method CreateDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataset.

=head1 SYNOPSIS

    my $lookoutvision = Paws->service('LookoutVision');
    my $CreateDatasetResponse = $lookoutvision->CreateDataset(
      DatasetType   => 'MyDatasetType',
      ProjectName   => 'MyProjectName',
      ClientToken   => 'MyClientToken',    # OPTIONAL
      DatasetSource => {
        GroundTruthManifest => {
          S3Object => {
            Bucket    => 'MyS3BucketName',       # min: 3, max: 63
            Key       => 'MyS3ObjectKey',        # min: 1, max: 1024
            VersionId => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DatasetMetadata = $CreateDatasetResponse->DatasetMetadata;

    # Returns a L<Paws::LookoutVision::CreateDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutvision/CreateDataset>

=head1 ATTRIBUTES


=head2 ClientToken => Str

ClientToken is an idempotency token that ensures a call to
C<CreateDataset> completes only once. You choose the value to pass. For
example, An issue, such as an network outage, might prevent you from
getting a response from C<CreateDataset>. In this case, safely retry
your call to C<CreateDataset> by using the same C<ClientToken>
parameter value. An error occurs if the other input parameters are not
the same as in the first request. Using a different value for
C<ClientToken> is considered a new call to C<CreateDataset>. An
idempotency token is active for 8 hours.



=head2 DatasetSource => L<Paws::LookoutVision::DatasetSource>

The location of the manifest file that Amazon Lookout for Vision uses
to create the dataset.

If you don't specify C<DatasetSource>, an empty dataset is created and
the operation synchronously returns. Later, you can add JSON Lines by
calling UpdateDatasetEntries.

If you specify a value for C<DataSource>, the manifest at the S3
location is validated and used to create the dataset. The call to
C<CreateDataset> is asynchronous and might take a while to complete. To
find out the current status, Check the value of C<Status> returned in a
call to DescribeDataset.



=head2 B<REQUIRED> DatasetType => Str

The type of the dataset. Specify C<train> for a training dataset.
Specify C<test> for a test dataset.



=head2 B<REQUIRED> ProjectName => Str

The name of the project in which you want to create a dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataset in L<Paws::LookoutVision>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

