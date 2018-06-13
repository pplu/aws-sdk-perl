
package Paws::IoTAnalytics::DeleteDatasetContent;
  use Moose;
  has DatasetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetName', required => 1);
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'versionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDatasetContent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets/{datasetName}/content');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DeleteDatasetContent - Arguments for method DeleteDatasetContent on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDatasetContent on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method DeleteDatasetContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDatasetContent.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    $iotanalytics->DeleteDatasetContent(
      DatasetName => 'MyDatasetName',
      VersionId   => 'MyDatasetContentVersion',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/DeleteDatasetContent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetName => Str

The name of the data set whose content is deleted.



=head2 VersionId => Str

The version of the data set whose content is deleted. You can also use
the strings "$LATEST" or "$LATEST_SUCCEEDED" to delete the latest or
latest successfully completed data set. If not specified,
"$LATEST_SUCCEEDED" is the default.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDatasetContent in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

