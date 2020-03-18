package Paws::IoTEvents::DetectorModelVersionSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has DetectorModelArn => (is => 'ro', isa => 'Str', request_name => 'detectorModelArn', traits => ['NameInRequest']);
  has DetectorModelName => (is => 'ro', isa => 'Str', request_name => 'detectorModelName', traits => ['NameInRequest']);
  has DetectorModelVersion => (is => 'ro', isa => 'Str', request_name => 'detectorModelVersion', traits => ['NameInRequest']);
  has EvaluationMethod => (is => 'ro', isa => 'Str', request_name => 'evaluationMethod', traits => ['NameInRequest']);
  has LastUpdateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdateTime', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DetectorModelVersionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::DetectorModelVersionSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::DetectorModelVersionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Information about the detector model version.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The time the detector model version was created.


=head2 DetectorModelArn => Str

  The ARN of the detector model version.


=head2 DetectorModelName => Str

  The name of the detector model.


=head2 DetectorModelVersion => Str

  The ID of the detector model version.


=head2 EvaluationMethod => Str

  Information about the order in which events are evaluated and how
actions are executed.


=head2 LastUpdateTime => Str

  The last time the detector model version was updated.


=head2 RoleArn => Str

  The ARN of the role that grants the detector model permission to
perform its tasks.


=head2 Status => Str

  The status of the detector model version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

