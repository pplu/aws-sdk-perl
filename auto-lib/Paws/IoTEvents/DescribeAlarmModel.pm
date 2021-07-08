
package Paws::IoTEvents::DescribeAlarmModel;
  use Moose;
  has AlarmModelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'alarmModelName', required => 1);
  has AlarmModelVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'version');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarmModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/alarm-models/{alarmModelName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTEvents::DescribeAlarmModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DescribeAlarmModel - Arguments for method DescribeAlarmModel on L<Paws::IoTEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAlarmModel on the
L<AWS IoT Events|Paws::IoTEvents> service. Use the attributes of this class
as arguments to method DescribeAlarmModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAlarmModel.

=head1 SYNOPSIS

    my $iotevents = Paws->service('IoTEvents');
    my $DescribeAlarmModelResponse = $iotevents->DescribeAlarmModel(
      AlarmModelName    => 'MyAlarmModelName',
      AlarmModelVersion => 'MyAlarmModelVersion',    # OPTIONAL
    );

    # Results:
    my $AlarmCapabilities = $DescribeAlarmModelResponse->AlarmCapabilities;
    my $AlarmEventActions = $DescribeAlarmModelResponse->AlarmEventActions;
    my $AlarmModelArn     = $DescribeAlarmModelResponse->AlarmModelArn;
    my $AlarmModelDescription =
      $DescribeAlarmModelResponse->AlarmModelDescription;
    my $AlarmModelName    = $DescribeAlarmModelResponse->AlarmModelName;
    my $AlarmModelVersion = $DescribeAlarmModelResponse->AlarmModelVersion;
    my $AlarmNotification = $DescribeAlarmModelResponse->AlarmNotification;
    my $AlarmRule         = $DescribeAlarmModelResponse->AlarmRule;
    my $CreationTime      = $DescribeAlarmModelResponse->CreationTime;
    my $Key               = $DescribeAlarmModelResponse->Key;
    my $LastUpdateTime    = $DescribeAlarmModelResponse->LastUpdateTime;
    my $RoleArn           = $DescribeAlarmModelResponse->RoleArn;
    my $Severity          = $DescribeAlarmModelResponse->Severity;
    my $Status            = $DescribeAlarmModelResponse->Status;
    my $StatusMessage     = $DescribeAlarmModelResponse->StatusMessage;

    # Returns a L<Paws::IoTEvents::DescribeAlarmModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents/DescribeAlarmModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlarmModelName => Str

The name of the alarm model.



=head2 AlarmModelVersion => Str

The version of the alarm model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAlarmModel in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

