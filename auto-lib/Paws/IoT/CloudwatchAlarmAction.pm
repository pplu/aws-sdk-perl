package Paws::IoT::CloudwatchAlarmAction;
  use Moose;
  has AlarmName => (is => 'ro', isa => 'Str', request_name => 'alarmName', traits => ['NameInRequest'], required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
  has StateReason => (is => 'ro', isa => 'Str', request_name => 'stateReason', traits => ['NameInRequest'], required => 1);
  has StateValue => (is => 'ro', isa => 'Str', request_name => 'stateValue', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CloudwatchAlarmAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::CloudwatchAlarmAction object:

  $service_obj->Method(Att1 => { AlarmName => $value, ..., StateValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::CloudwatchAlarmAction object:

  $result = $service_obj->Method(...);
  $result->Att1->AlarmName

=head1 DESCRIPTION

Describes an action that updates a CloudWatch alarm.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlarmName => Str

  The CloudWatch alarm name.


=head2 B<REQUIRED> RoleArn => Str

  The IAM role that allows access to the CloudWatch alarm.


=head2 B<REQUIRED> StateReason => Str

  The reason for the alarm change.


=head2 B<REQUIRED> StateValue => Str

  The value of the alarm state. Acceptable values are: OK, ALARM,
INSUFFICIENT_DATA.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

