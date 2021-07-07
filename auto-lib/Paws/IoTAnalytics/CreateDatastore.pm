
package Paws::IoTAnalytics::CreateDatastore;
  use Moose;
  has DatastoreName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datastoreName', required => 1);
  has DatastorePartitions => (is => 'ro', isa => 'Paws::IoTAnalytics::DatastorePartitions', traits => ['NameInRequest'], request_name => 'datastorePartitions');
  has DatastoreStorage => (is => 'ro', isa => 'Paws::IoTAnalytics::DatastoreStorage', traits => ['NameInRequest'], request_name => 'datastoreStorage');
  has FileFormatConfiguration => (is => 'ro', isa => 'Paws::IoTAnalytics::FileFormatConfiguration', traits => ['NameInRequest'], request_name => 'fileFormatConfiguration');
  has RetentionPeriod => (is => 'ro', isa => 'Paws::IoTAnalytics::RetentionPeriod', traits => ['NameInRequest'], request_name => 'retentionPeriod');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDatastore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datastores');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTAnalytics::CreateDatastoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::CreateDatastore - Arguments for method CreateDatastore on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDatastore on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method CreateDatastore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDatastore.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    my $CreateDatastoreResponse = $iotanalytics->CreateDatastore(
      DatastoreName       => 'MyDatastoreName',
      DatastorePartitions => {
        Partitions => [
          {
            AttributePartition => {
              AttributeName => 'MyPartitionAttributeName',    # min: 1, max: 128

            },    # OPTIONAL
            TimestampPartition => {
              AttributeName   => 'MyPartitionAttributeName',  # min: 1, max: 128
              TimestampFormat =>
                'MyTimestampFormat',    # min: 1, max: 50; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # max: 25; OPTIONAL
      },    # OPTIONAL
      DatastoreStorage => {
        CustomerManagedS3 => {
          Bucket    => 'MyBucketName',     # min: 3, max: 255
          RoleArn   => 'MyRoleArn',        # min: 20, max: 2048
          KeyPrefix => 'MyS3KeyPrefix',    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        ServiceManagedS3 => {

        },    # OPTIONAL
      },    # OPTIONAL
      FileFormatConfiguration => {
        JsonConfiguration => {

        },    # OPTIONAL
        ParquetConfiguration => {
          SchemaDefinition => {
            Columns => [
              {
                Name => 'MyColumnName',        # min: 1, max: 255
                Type => 'MyColumnDataType',    # min: 1, max: 131072

              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      RetentionPeriod => {
        NumberOfDays => 1,    # min: 1; OPTIONAL
        Unlimited    => 1,    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DatastoreArn    = $CreateDatastoreResponse->DatastoreArn;
    my $DatastoreName   = $CreateDatastoreResponse->DatastoreName;
    my $RetentionPeriod = $CreateDatastoreResponse->RetentionPeriod;

    # Returns a L<Paws::IoTAnalytics::CreateDatastoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/CreateDatastore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreName => Str

The name of the data store.



=head2 DatastorePartitions => L<Paws::IoTAnalytics::DatastorePartitions>

Contains information about the partitions in a data store.



=head2 DatastoreStorage => L<Paws::IoTAnalytics::DatastoreStorage>

Where data store data is stored. You can choose one of
C<serviceManagedS3> or C<customerManagedS3> storage. If not specified,
the default is C<serviceManagedS3>. You cannot change this storage
option after the data store is created.



=head2 FileFormatConfiguration => L<Paws::IoTAnalytics::FileFormatConfiguration>

Contains the configuration information of file formats. AWS IoT
Analytics data stores support JSON and Parquet
(https://parquet.apache.org/).

The default file format is JSON. You can specify only one format.

You can't change the file format after you create the data store.



=head2 RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>

How long, in days, message data is kept for the data store. When
C<customerManagedS3> storage is selected, this parameter is ignored.



=head2 Tags => ArrayRef[L<Paws::IoTAnalytics::Tag>]

Metadata which can be used to manage the data store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDatastore in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

