package Paws::IoT::ActiveViolation;
  use Moose;
  has Behavior => (is => 'ro', isa => 'Paws::IoT::Behavior', request_name => 'behavior', traits => ['NameInRequest']);
  has LastViolationTime => (is => 'ro', isa => 'Str', request_name => 'lastViolationTime', traits => ['NameInRequest']);
  has LastViolationValue => (is => 'ro', isa => 'Paws::IoT::MetricValue', request_name => 'lastViolationValue', traits => ['NameInRequest']);
  has SecurityProfileName => (is => 'ro', isa => 'Str', request_name => 'securityProfileName', traits => ['NameInRequest']);
  has ThingName => (is => 'ro', isa => 'Str', request_name => 'thingName', traits => ['NameInRequest']);
  has ViolationId => (is => 'ro', isa => 'Str', request_name => 'violationId', traits => ['NameInRequest']);
  has ViolationStartTime => (is => 'ro', isa => 'Str', request_name => 'violationStartTime', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ActiveViolation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ActiveViolation object:

  $service_obj->Method(Att1 => { Behavior => $value, ..., ViolationStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ActiveViolation object:

  $result = $service_obj->Method(...);
  $result->Att1->Behavior

=head1 DESCRIPTION

Information about an active Device Defender security profile behavior
violation.

=head1 ATTRIBUTES


=head2 Behavior => L<Paws::IoT::Behavior>

  The behavior which is being violated.


=head2 LastViolationTime => Str

  The time the most recent violation occurred.


=head2 LastViolationValue => L<Paws::IoT::MetricValue>

  The value of the metric (the measurement) which caused the most recent
violation.


=head2 SecurityProfileName => Str

  The security profile whose behavior is in violation.


=head2 ThingName => Str

  The name of the thing responsible for the active violation.


=head2 ViolationId => Str

  The ID of the active violation.


=head2 ViolationStartTime => Str

  The time the violation started.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

