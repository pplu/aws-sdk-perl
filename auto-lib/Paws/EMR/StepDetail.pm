# Generated from default/object.tt
package Paws::EMR::StepDetail;
  use Moo;
  use Types::Standard qw//;
  use Paws::EMR::Types qw/EMR_StepExecutionStatusDetail EMR_StepConfig/;
  has ExecutionStatusDetail => (is => 'ro', isa => EMR_StepExecutionStatusDetail, required => 1);
  has StepConfig => (is => 'ro', isa => EMR_StepConfig, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'StepConfig' => 1,
                    'ExecutionStatusDetail' => 1
                  },
  'types' => {
               'StepConfig' => {
                                 'type' => 'EMR_StepConfig',
                                 'class' => 'Paws::EMR::StepConfig'
                               },
               'ExecutionStatusDetail' => {
                                            'class' => 'Paws::EMR::StepExecutionStatusDetail',
                                            'type' => 'EMR_StepExecutionStatusDetail'
                                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::StepDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::StepDetail object:

  $service_obj->Method(Att1 => { ExecutionStatusDetail => $value, ..., StepConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::StepDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ExecutionStatusDetail

=head1 DESCRIPTION

Combines the execution state and configuration of a step.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionStatusDetail => EMR_StepExecutionStatusDetail

  The description of the step status.


=head2 B<REQUIRED> StepConfig => EMR_StepConfig

  The step configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

