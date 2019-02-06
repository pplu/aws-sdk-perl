
package Paws::IoTAnalytics::ListDatasetContents;
  use Moose;
  has DatasetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ScheduledBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'scheduledBefore');
  has ScheduledOnOrAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'scheduledOnOrAfter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDatasetContents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets/{datasetName}/contents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTAnalytics::ListDatasetContentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ListDatasetContents - Arguments for method ListDatasetContents on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDatasetContents on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method ListDatasetContents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDatasetContents.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    my $ListDatasetContentsResponse = $iotanalytics->ListDatasetContents(
      DatasetName        => 'MyDatasetName',
      MaxResults         => 1,                        # OPTIONAL
      NextToken          => 'MyNextToken',            # OPTIONAL
      ScheduledBefore    => '1970-01-01T01:00:00',    # OPTIONAL
      ScheduledOnOrAfter => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $DatasetContentSummaries =
      $ListDatasetContentsResponse->DatasetContentSummaries;
    my $NextToken = $ListDatasetContentsResponse->NextToken;

    # Returns a L<Paws::IoTAnalytics::ListDatasetContentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/ListDatasetContents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetName => Str

The name of the data set whose contents information you want to list.



=head2 MaxResults => Int

The maximum number of results to return in this request.



=head2 NextToken => Str

The token for the next set of results.



=head2 ScheduledBefore => Str

A filter to limit results to those data set contents whose creation is
scheduled before the given time. See the field C<triggers.schedule> in
the CreateDataset request. (timestamp)



=head2 ScheduledOnOrAfter => Str

A filter to limit results to those data set contents whose creation is
scheduled on or after the given time. See the field
C<triggers.schedule> in the CreateDataset request. (timestamp)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDatasetContents in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

