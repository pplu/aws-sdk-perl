package Paws::Inspector::Telemetry;
  use Moose;
  has messageTypeTelemetries => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::MessageTypeTelemetry]');
  has status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::Telemetry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::Telemetry object:

  $service_obj->Method(Att1 => { messageTypeTelemetries => $value, ..., status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::Telemetry object:

  $result = $service_obj->Method(...);
  $result->Att1->messageTypeTelemetries

=head1 DESCRIPTION

The metadata about the Inspector application data metrics collected by
the agent.

This data type is used as the response element in the
GetAssessmentTelemetry action.

=head1 ATTRIBUTES

=head2 messageTypeTelemetries => ArrayRef[L<Paws::Inspector::MessageTypeTelemetry>]

  Counts of individual metrics received by Inspector from the agent.

=head2 status => Str

  The category of the individual metrics that together constitute the
telemetry that Inspector received from the agent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

