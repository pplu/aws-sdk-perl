# Generated from default/object.tt
package Paws::Config::RemediationExecutionStatus;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_RemediationExecutionStep Config_ResourceKey/;
  has InvocationTime => (is => 'ro', isa => Str);
  has LastUpdatedTime => (is => 'ro', isa => Str);
  has ResourceKey => (is => 'ro', isa => Config_ResourceKey);
  has State => (is => 'ro', isa => Str);
  has StepDetails => (is => 'ro', isa => ArrayRef[Config_RemediationExecutionStep]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StepDetails' => {
                                  'type' => 'ArrayRef[Config_RemediationExecutionStep]',
                                  'class' => 'Paws::Config::RemediationExecutionStep'
                                },
               'State' => {
                            'type' => 'Str'
                          },
               'LastUpdatedTime' => {
                                      'type' => 'Str'
                                    },
               'InvocationTime' => {
                                     'type' => 'Str'
                                   },
               'ResourceKey' => {
                                  'type' => 'Config_ResourceKey',
                                  'class' => 'Paws::Config::ResourceKey'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::RemediationExecutionStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::RemediationExecutionStatus object:

  $service_obj->Method(Att1 => { InvocationTime => $value, ..., StepDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::RemediationExecutionStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->InvocationTime

=head1 DESCRIPTION

Provides details of the current status of the invoked remediation
action for that resource.

=head1 ATTRIBUTES


=head2 InvocationTime => Str

  Start time when the remediation was executed.


=head2 LastUpdatedTime => Str

  The time when the remediation execution was last updated.


=head2 ResourceKey => Config_ResourceKey

  


=head2 State => Str

  ENUM of the values.


=head2 StepDetails => ArrayRef[Config_RemediationExecutionStep]

  Details of every step.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

