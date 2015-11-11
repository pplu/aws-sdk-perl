package Paws::EMR::StepConfig;
  use Moose;
  has ActionOnFailure => (is => 'ro', isa => 'Str');
  has HadoopJarStep => (is => 'ro', isa => 'Paws::EMR::HadoopJarStepConfig', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::StepConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::StepConfig object:

  $service_obj->Method(Att1 => { ActionOnFailure => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::StepConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionOnFailure

=head1 DESCRIPTION

Specification of a job flow step.

=head1 ATTRIBUTES


=head2 ActionOnFailure => Str

  The action to take if the job flow step fails.


=head2 B<REQUIRED> HadoopJarStep => L<Paws::EMR::HadoopJarStepConfig>

  The JAR file used for the job flow step.


=head2 B<REQUIRED> Name => Str

  The name of the job flow step.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

