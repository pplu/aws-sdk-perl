# Generated from default/object.tt
package Paws::EMR::StepConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EMR::Types qw/EMR_HadoopJarStepConfig/;
  has ActionOnFailure => (is => 'ro', isa => Str);
  has HadoopJarStep => (is => 'ro', isa => EMR_HadoopJarStepConfig, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'HadoopJarStep' => {
                                    'class' => 'Paws::EMR::HadoopJarStepConfig',
                                    'type' => 'EMR_HadoopJarStepConfig'
                                  },
               'ActionOnFailure' => {
                                      'type' => 'Str'
                                    }
             },
  'IsRequired' => {
                    'Name' => 1,
                    'HadoopJarStep' => 1
                  }
}
;
    return $Params_map;
  }


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

Specification of a cluster (job flow) step.

=head1 ATTRIBUTES


=head2 ActionOnFailure => Str

  The action to take when the cluster step fails. Possible values are
TERMINATE_CLUSTER, CANCEL_AND_WAIT, and CONTINUE. TERMINATE_JOB_FLOW is
provided for backward compatibility. We recommend using
TERMINATE_CLUSTER instead.


=head2 B<REQUIRED> HadoopJarStep => EMR_HadoopJarStepConfig

  The JAR file used for the step.


=head2 B<REQUIRED> Name => Str

  The name of the step.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

