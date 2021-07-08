
package Paws::LookoutVision::UpdateDatasetEntries;
  use Moose;
  has Changes => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has DatasetType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetType', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDatasetEntries');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-11-20/projects/{projectName}/datasets/{datasetType}/entries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutVision::UpdateDatasetEntriesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::UpdateDatasetEntries - Arguments for method UpdateDatasetEntries on L<Paws::LookoutVision>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDatasetEntries on the
L<Amazon Lookout for Vision|Paws::LookoutVision> service. Use the attributes of this class
as arguments to method UpdateDatasetEntries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDatasetEntries.

=head1 SYNOPSIS

    my $lookoutvision = Paws->service('LookoutVision');
    my $UpdateDatasetEntriesResponse = $lookoutvision->UpdateDatasetEntries(
      Changes     => 'BlobDatasetChanges',
      DatasetType => 'MyDatasetType',
      ProjectName => 'MyProjectName',
      ClientToken => 'MyClientToken',        # OPTIONAL
    );

    # Results:
    my $Status = $UpdateDatasetEntriesResponse->Status;

    # Returns a L<Paws::LookoutVision::UpdateDatasetEntriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutvision/UpdateDatasetEntries>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Changes => Str

The entries to add to the dataset.



=head2 ClientToken => Str

ClientToken is an idempotency token that ensures a call to
C<UpdateDatasetEntries> completes only once. You choose the value to
pass. For example, An issue, such as an network outage, might prevent
you from getting a response from C<UpdateDatasetEntries>. In this case,
safely retry your call to C<UpdateDatasetEntries> by using the same
C<ClientToken> parameter value. An error occurs if the other input
parameters are not the same as in the first request. Using a different
value for C<ClientToken> is considered a new call to
C<UpdateDatasetEntries>. An idempotency token is active for 8 hours.



=head2 B<REQUIRED> DatasetType => Str

The type of the dataset that you want to update. Specify C<train> to
update the training dataset. Specify C<test> to update the test
dataset. If you have a single dataset project, specify C<train>.



=head2 B<REQUIRED> ProjectName => Str

The name of the project that contains the dataset that you want to
update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDatasetEntries in L<Paws::LookoutVision>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

