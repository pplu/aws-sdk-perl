
package Paws::IoTAnalytics::DescribeDatastore;
  use Moose;
  has DatastoreName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datastoreName', required => 1);
  has IncludeStatistics => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeStatistics');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDatastore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datastores/{datastoreName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTAnalytics::DescribeDatastoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DescribeDatastore - Arguments for method DescribeDatastore on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDatastore on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method DescribeDatastore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDatastore.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    my $DescribeDatastoreResponse = $iotanalytics->DescribeDatastore(
      DatastoreName     => 'MyDatastoreName',
      IncludeStatistics => 1,                   # OPTIONAL
    );

    # Results:
    my $Datastore  = $DescribeDatastoreResponse->Datastore;
    my $Statistics = $DescribeDatastoreResponse->Statistics;

    # Returns a L<Paws::IoTAnalytics::DescribeDatastoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/DescribeDatastore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreName => Str

The name of the data store



=head2 IncludeStatistics => Bool

If true, additional statistical information about the datastore is
included in the response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDatastore in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

