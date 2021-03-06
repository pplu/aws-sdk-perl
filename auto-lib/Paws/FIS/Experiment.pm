# Generated by default/object.tt
package Paws::FIS::Experiment;
  use Moose;
  has Actions => (is => 'ro', isa => 'Paws::FIS::ExperimentActionMap', request_name => 'actions', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has ExperimentTemplateId => (is => 'ro', isa => 'Str', request_name => 'experimentTemplateId', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Paws::FIS::ExperimentState', request_name => 'state', traits => ['NameInRequest']);
  has StopConditions => (is => 'ro', isa => 'ArrayRef[Paws::FIS::ExperimentStopCondition]', request_name => 'stopConditions', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::FIS::TagMap', request_name => 'tags', traits => ['NameInRequest']);
  has Targets => (is => 'ro', isa => 'Paws::FIS::ExperimentTargetMap', request_name => 'targets', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::Experiment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FIS::Experiment object:

  $service_obj->Method(Att1 => { Actions => $value, ..., Targets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FIS::Experiment object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Describes an experiment.

=head1 ATTRIBUTES


=head2 Actions => L<Paws::FIS::ExperimentActionMap>

The actions for the experiment.


=head2 CreationTime => Str

The time the experiment was created.


=head2 EndTime => Str

The time that the experiment ended.


=head2 ExperimentTemplateId => Str

The ID of the experiment template.


=head2 Id => Str

The ID of the experiment.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that grants the AWS FIS
service permission to perform service actions on your behalf.


=head2 StartTime => Str

The time that the experiment was started.


=head2 State => L<Paws::FIS::ExperimentState>

The state of the experiment.


=head2 StopConditions => ArrayRef[L<Paws::FIS::ExperimentStopCondition>]

The stop conditions for the experiment.


=head2 Tags => L<Paws::FIS::TagMap>

The tags for the experiment.


=head2 Targets => L<Paws::FIS::ExperimentTargetMap>

The targets for the experiment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

