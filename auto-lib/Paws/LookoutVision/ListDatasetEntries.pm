
package Paws::LookoutVision::ListDatasetEntries;
  use Moose;
  has AfterCreationDate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdAfter');
  has AnomalyClass => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'anomalyClass');
  has BeforeCreationDate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdBefore');
  has DatasetType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetType', required => 1);
  has Labeled => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'labeled');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);
  has SourceRefContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sourceRefContains');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDatasetEntries');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-11-20/projects/{projectName}/datasets/{datasetType}/entries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutVision::ListDatasetEntriesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::ListDatasetEntries - Arguments for method ListDatasetEntries on L<Paws::LookoutVision>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDatasetEntries on the
L<Amazon Lookout for Vision|Paws::LookoutVision> service. Use the attributes of this class
as arguments to method ListDatasetEntries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDatasetEntries.

=head1 SYNOPSIS

    my $lookoutvision = Paws->service('LookoutVision');
    my $ListDatasetEntriesResponse = $lookoutvision->ListDatasetEntries(
      DatasetType        => 'MyDatasetType',
      ProjectName        => 'MyProjectName',
      AfterCreationDate  => '1970-01-01T01:00:00',     # OPTIONAL
      AnomalyClass       => 'MyAnomalyClassFilter',    # OPTIONAL
      BeforeCreationDate => '1970-01-01T01:00:00',     # OPTIONAL
      Labeled            => 1,                         # OPTIONAL
      MaxResults         => 1,                         # OPTIONAL
      NextToken          => 'MyPaginationToken',       # OPTIONAL
      SourceRefContains  => 'MyQueryString',           # OPTIONAL
    );

    # Results:
    my $DatasetEntries = $ListDatasetEntriesResponse->DatasetEntries;
    my $NextToken      = $ListDatasetEntriesResponse->NextToken;

    # Returns a L<Paws::LookoutVision::ListDatasetEntriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutvision/ListDatasetEntries>

=head1 ATTRIBUTES


=head2 AfterCreationDate => Str

Only includes entries after the specified date in the response. For
example, C<2020-06-23T00:00:00>.



=head2 AnomalyClass => Str

Specify C<normal> to include only normal images. Specify C<anomaly> to
only include anomalous entries. If you don't specify a value, Amazon
Lookout for Vision returns normal and anomalous images.



=head2 BeforeCreationDate => Str

Only includes entries before the specified date in the response. For
example, C<2020-06-23T00:00:00>.



=head2 B<REQUIRED> DatasetType => Str

The type of the dataset that you want to list. Specify C<train> to list
the training dataset. Specify C<test> to list the test dataset. If you
have a single dataset project, specify C<train>.



=head2 Labeled => Bool

Specify C<true> to include labeled entries, otherwise specify C<false>.
If you don't specify a value, Lookout for Vision returns all entries.



=head2 MaxResults => Int

The maximum number of results to return per paginated call. The largest
value you can specify is 100. If you specify a value greater than 100,
a ValidationException error occurs. The default value is 100.



=head2 NextToken => Str

If the previous response was incomplete (because there is more data to
retrieve), Amazon Lookout for Vision returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
dataset entries.



=head2 B<REQUIRED> ProjectName => Str

The name of the project that contains the dataset that you want to
list.



=head2 SourceRefContains => Str

Perform a "contains" search on the values of the C<source-ref> key
within the dataset. For example a value of "IMG_17" returns all JSON
Lines where the C<source-ref> key value matches I<*IMG_17*>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDatasetEntries in L<Paws::LookoutVision>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

