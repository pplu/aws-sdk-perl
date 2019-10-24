
package Paws::IoTAnalytics::UpdateDataset;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_DatasetTrigger IoTAnalytics_VersioningConfiguration IoTAnalytics_DatasetContentDeliveryRule IoTAnalytics_RetentionPeriod IoTAnalytics_DatasetAction/;
  has Actions => (is => 'ro', isa => ArrayRef[IoTAnalytics_DatasetAction], required => 1, predicate => 1);
  has ContentDeliveryRules => (is => 'ro', isa => ArrayRef[IoTAnalytics_DatasetContentDeliveryRule], predicate => 1);
  has DatasetName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RetentionPeriod => (is => 'ro', isa => IoTAnalytics_RetentionPeriod, predicate => 1);
  has Triggers => (is => 'ro', isa => ArrayRef[IoTAnalytics_DatasetTrigger], predicate => 1);
  has VersioningConfiguration => (is => 'ro', isa => IoTAnalytics_VersioningConfiguration, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDataset');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/datasets/{datasetName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RetentionPeriod' => {
                                      'class' => 'Paws::IoTAnalytics::RetentionPeriod',
                                      'type' => 'IoTAnalytics_RetentionPeriod'
                                    },
               'Triggers' => {
                               'class' => 'Paws::IoTAnalytics::DatasetTrigger',
                               'type' => 'ArrayRef[IoTAnalytics_DatasetTrigger]'
                             },
               'Actions' => {
                              'class' => 'Paws::IoTAnalytics::DatasetAction',
                              'type' => 'ArrayRef[IoTAnalytics_DatasetAction]'
                            },
               'VersioningConfiguration' => {
                                              'class' => 'Paws::IoTAnalytics::VersioningConfiguration',
                                              'type' => 'IoTAnalytics_VersioningConfiguration'
                                            },
               'DatasetName' => {
                                  'type' => 'Str'
                                },
               'ContentDeliveryRules' => {
                                           'class' => 'Paws::IoTAnalytics::DatasetContentDeliveryRule',
                                           'type' => 'ArrayRef[IoTAnalytics_DatasetContentDeliveryRule]'
                                         }
             },
  'ParamInURI' => {
                    'DatasetName' => 'datasetName'
                  },
  'NameInRequest' => {
                       'RetentionPeriod' => 'retentionPeriod',
                       'Triggers' => 'triggers',
                       'Actions' => 'actions',
                       'VersioningConfiguration' => 'versioningConfiguration',
                       'ContentDeliveryRules' => 'contentDeliveryRules'
                     },
  'IsRequired' => {
                    'Actions' => 1,
                    'DatasetName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::UpdateDataset - Arguments for method UpdateDataset on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataset on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method UpdateDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataset.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    $iotanalytics->UpdateDataset(
      Actions => [
        {
          ActionName      => 'MyDatasetActionName', # min: 1, max: 128; OPTIONAL
          ContainerAction => {
            ExecutionRoleArn      => 'MyRoleArn',    # min: 20, max: 2048
            Image                 => 'MyImage',      # max: 255
            ResourceConfiguration => {
              ComputeType    => 'ACU_1',             # values: ACU_1, ACU_2
              VolumeSizeInGB => 1,                   # min: 1, max: 50

            },
            Variables => [
              {
                Name => 'MyVariableName',            # min: 1, max: 256
                DatasetContentVersionValue => {
                  DatasetName => 'MyDatasetName',    # min: 1, max: 128

                },    # OPTIONAL
                DoubleValue        => 1,    # OPTIONAL
                OutputFileUriValue => {
                  FileName => 'MyOutputFileName',

                },                          # OPTIONAL
                StringValue => 'MyStringValue',    # max: 1024; OPTIONAL
              },
              ...
            ],                                     # max: 50; OPTIONAL
          },    # OPTIONAL
          QueryAction => {
            SqlQuery => 'MySqlQuery',
            Filters  => [
              {
                DeltaTime => {
                  OffsetSeconds  => 1,
                  TimeExpression => 'MyTimeExpression',

                },    # OPTIONAL
              },
              ...
            ],        # max: 1; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      DatasetName          => 'MyDatasetName',
      ContentDeliveryRules => [
        {
          Destination => {
            IotEventsDestinationConfiguration => {
              InputName => 'MyIotEventsInputName',    # min: 1, max: 128
              RoleArn   => 'MyRoleArn',               # min: 20, max: 2048

            },    # OPTIONAL
            S3DestinationConfiguration => {
              Bucket            => 'MyBucketName',          # min: 3, max: 255
              Key               => 'MyBucketKeyExpression', # min: 1, max: 255
              RoleArn           => 'MyRoleArn',             # min: 20, max: 2048
              GlueConfiguration => {
                DatabaseName => 'MyGlueDatabaseName',       # min: 1, max: 150
                TableName    => 'MyGlueTableName',          # min: 1, max: 150

              },    # OPTIONAL
            },    # OPTIONAL
          },
          EntryName => 'MyEntryName',    # OPTIONAL
        },
        ...
      ],                                 # OPTIONAL
      RetentionPeriod => {
        NumberOfDays => 1,               # min: 1; OPTIONAL
        Unlimited    => 1,               # OPTIONAL
      },    # OPTIONAL
      Triggers => [
        {
          Dataset => {
            Name => 'MyDatasetName',    # min: 1, max: 128

          },    # OPTIONAL
          Schedule => {
            Expression => 'MyScheduleExpression',    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      VersioningConfiguration => {
        MaxVersions => 1,    # min: 1, max: 1000; OPTIONAL
        Unlimited   => 1,    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/UpdateDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[IoTAnalytics_DatasetAction]

A list of "DatasetAction" objects.



=head2 ContentDeliveryRules => ArrayRef[IoTAnalytics_DatasetContentDeliveryRule]

When data set contents are created they are delivered to destinations
specified here.



=head2 B<REQUIRED> DatasetName => Str

The name of the data set to update.



=head2 RetentionPeriod => IoTAnalytics_RetentionPeriod

How long, in days, data set contents are kept for the data set.



=head2 Triggers => ArrayRef[IoTAnalytics_DatasetTrigger]

A list of "DatasetTrigger" objects. The list can be empty or can
contain up to five B<DataSetTrigger> objects.



=head2 VersioningConfiguration => IoTAnalytics_VersioningConfiguration

[Optional] How many versions of data set contents are kept. If not
specified or set to null, only the latest version plus the latest
succeeded version (if they are different) are kept for the time period
specified by the "retentionPeriod" parameter. (For more information,
see
https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataset in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

