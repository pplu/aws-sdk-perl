package Paws::Config::SourceDetail;
  use Moose;
  has EventSource => (is => 'ro', isa => 'Str');
  has MaximumExecutionFrequency => (is => 'ro', isa => 'Str');
  has MessageType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::SourceDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::SourceDetail object:

  $service_obj->Method(Att1 => { EventSource => $value, ..., MessageType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::SourceDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->EventSource

=head1 DESCRIPTION

Provides the source and the message types that trigger AWS Config to
evaluate your AWS resources against a rule. It also provides the
frequency with which you want AWS Config to run evaluations for the
rule if the trigger type is periodic. You can specify the parameter
values for C<SourceDetail> only for custom rules.

=head1 ATTRIBUTES


=head2 EventSource => Str

  The source of the event, such as an AWS service, that triggers AWS
Config to evaluate your AWS resources.


=head2 MaximumExecutionFrequency => Str

  The frequency at which you want AWS Config to run evaluations for a
custom rule with a periodic trigger. If you specify a value for
C<MaximumExecutionFrequency>, then C<MessageType> must use the
C<ScheduledNotification> value.

By default, rules with a periodic trigger are evaluated every 24 hours.
To change the frequency, specify a valid value for the
C<MaximumExecutionFrequency> parameter.

Based on the valid value you choose, AWS Config runs evaluations once
for each valid value. For example, if you choose C<Three_Hours>, AWS
Config runs evaluations once every three hours. In this case,
C<Three_Hours> is the frequency of this rule.


=head2 MessageType => Str

  The type of notification that triggers AWS Config to run an evaluation
for a rule. You can specify the following notification types:

=over

=item *

C<ConfigurationItemChangeNotification> - Triggers an evaluation when
AWS Config delivers a configuration item as a result of a resource
change.

=item *

C<OversizedConfigurationItemChangeNotification> - Triggers an
evaluation when AWS Config delivers an oversized configuration item.
AWS Config may generate this notification type when a resource changes
and the notification exceeds the maximum size allowed by Amazon SNS.

=item *

C<ScheduledNotification> - Triggers a periodic evaluation at the
frequency specified for C<MaximumExecutionFrequency>.

=item *

C<ConfigurationSnapshotDeliveryCompleted> - Triggers a periodic
evaluation when AWS Config delivers a configuration snapshot.

=back

If you want your custom rule to be triggered by configuration changes,
specify two SourceDetail objects, one for
C<ConfigurationItemChangeNotification> and one for
C<OversizedConfigurationItemChangeNotification>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

