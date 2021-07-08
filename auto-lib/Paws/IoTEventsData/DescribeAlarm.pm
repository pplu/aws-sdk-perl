
package Paws::IoTEventsData::DescribeAlarm;
  use Moose;
  has AlarmModelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'alarmModelName', required => 1);
  has KeyValue => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'keyValue');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/alarms/{alarmModelName}/keyValues/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTEventsData::DescribeAlarmResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::DescribeAlarm - Arguments for method DescribeAlarm on L<Paws::IoTEventsData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAlarm on the
L<AWS IoT Events Data|Paws::IoTEventsData> service. Use the attributes of this class
as arguments to method DescribeAlarm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAlarm.

=head1 SYNOPSIS

    my $data.iotevents = Paws->service('IoTEventsData');
    my $DescribeAlarmResponse = $data . iotevents->DescribeAlarm(
      AlarmModelName => 'MyAlarmModelName',
      KeyValue       => 'MyKeyValue',         # OPTIONAL
    );

    # Results:
    my $Alarm = $DescribeAlarmResponse->Alarm;

    # Returns a L<Paws::IoTEventsData::DescribeAlarmResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.iotevents/DescribeAlarm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlarmModelName => Str

The name of the alarm model.



=head2 KeyValue => Str

The value of the key used as a filter to select only the alarms
associated with the key
(https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAlarm in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

