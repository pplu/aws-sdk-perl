package Paws::EMR::Step;
  use Moose;
  has ActionOnFailure => (is => 'ro', isa => 'Str');
  has Config => (is => 'ro', isa => 'Paws::EMR::HadoopStepConfig');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::EMR::StepStatus');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::Step

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::Step object:

  $service_obj->Method(Att1 => { ActionOnFailure => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::Step object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionOnFailure

=head1 DESCRIPTION

This represents a step in a cluster.

=head1 ATTRIBUTES


=head2 ActionOnFailure => Str

  The action to take when the cluster step fails. Possible values are
TERMINATE_CLUSTER, CANCEL_AND_WAIT, and CONTINUE. TERMINATE_JOB_FLOW is
provided for backward compatibility. We recommend using
TERMINATE_CLUSTER instead.


=head2 Config => L<Paws::EMR::HadoopStepConfig>

  The Hadoop job configuration of the cluster step.


=head2 Id => Str

  The identifier of the cluster step.


=head2 Name => Str

  The name of the cluster step.


=head2 Status => L<Paws::EMR::StepStatus>

  The current execution status details of the cluster step.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

