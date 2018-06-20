package Paws::IoTAnalytics::Schedule;
  use Moose;
  has Expression => (is => 'ro', isa => 'Str', request_name => 'expression', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::Schedule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::Schedule object:

  $service_obj->Method(Att1 => { Expression => $value, ..., Expression => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::Schedule object:

  $result = $service_obj->Method(...);
  $result->Att1->Expression

=head1 DESCRIPTION

The schedule for when to trigger an update.

=head1 ATTRIBUTES


=head2 Expression => Str

  The expression that defines when to trigger an update. For more
information, see Schedule Expressions for Rules
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html)
in the Amazon CloudWatch documentation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

