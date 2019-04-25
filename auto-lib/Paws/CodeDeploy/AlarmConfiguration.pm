package Paws::CodeDeploy::AlarmConfiguration;
  use Moose;
  has Alarms => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::Alarm]', request_name => 'alarms', traits => ['NameInRequest']);
  has Enabled => (is => 'ro', isa => 'Bool', request_name => 'enabled', traits => ['NameInRequest']);
  has IgnorePollAlarmFailure => (is => 'ro', isa => 'Bool', request_name => 'ignorePollAlarmFailure', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::AlarmConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::AlarmConfiguration object:

  $service_obj->Method(Att1 => { Alarms => $value, ..., IgnorePollAlarmFailure => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::AlarmConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Alarms

=head1 DESCRIPTION

Information about alarms associated with the deployment group.

=head1 ATTRIBUTES


=head2 Alarms => ArrayRef[L<Paws::CodeDeploy::Alarm>]

  A list of alarms configured for the deployment group. A maximum of 10
alarms can be added to a deployment group.


=head2 Enabled => Bool

  Indicates whether the alarm configuration is enabled.


=head2 IgnorePollAlarmFailure => Bool

  Indicates whether a deployment should continue if information about the
current state of alarms cannot be retrieved from Amazon CloudWatch. The
default value is false.

=over

=item *

true: The deployment proceeds even if alarm status information can't be
retrieved from Amazon CloudWatch.

=item *

false: The deployment stops if alarm status information can't be
retrieved from Amazon CloudWatch.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

