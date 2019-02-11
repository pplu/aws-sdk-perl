
package Paws::IoTAnalytics::UpdateDataset;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::DatasetAction]', traits => ['NameInRequest'], request_name => 'actions', required => 1);
  has ContentDeliveryRules => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::DatasetContentDeliveryRule]', traits => ['NameInRequest'], request_name => 'contentDeliveryRules');
  has DatasetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetName', required => 1);
  has RetentionPeriod => (is => 'ro', isa => 'Paws::IoTAnalytics::RetentionPeriod', traits => ['NameInRequest'], request_name => 'retentionPeriod');
  has Triggers => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::DatasetTrigger]', traits => ['NameInRequest'], request_name => 'triggers');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets/{datasetName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
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
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/UpdateDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[L<Paws::IoTAnalytics::DatasetAction>]

A list of "DatasetAction" objects.



=head2 ContentDeliveryRules => ArrayRef[L<Paws::IoTAnalytics::DatasetContentDeliveryRule>]

When data set contents are created they are delivered to destinations
specified here.



=head2 B<REQUIRED> DatasetName => Str

The name of the data set to update.



=head2 RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>

How long, in days, message data is kept for the data set.



=head2 Triggers => ArrayRef[L<Paws::IoTAnalytics::DatasetTrigger>]

A list of "DatasetTrigger" objects. The list can be empty or can
contain up to five B<DataSetTrigger> objects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataset in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

