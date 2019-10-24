# Generated from default/object.tt
package Paws::StepFunctions::TaskStartFailedEventDetails;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StepFunctions::Types qw//;
  has Cause => (is => 'ro', isa => Str);
  has Error => (is => 'ro', isa => Str);
  has Resource => (is => 'ro', isa => Str, required => 1);
  has ResourceType => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Error' => {
                            'type' => 'Str'
                          },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'Resource' => {
                               'type' => 'Str'
                             },
               'Cause' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'Error' => 'error',
                       'ResourceType' => 'resourceType',
                       'Resource' => 'resource',
                       'Cause' => 'cause'
                     },
  'IsRequired' => {
                    'ResourceType' => 1,
                    'Resource' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::TaskStartFailedEventDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::TaskStartFailedEventDetails object:

  $service_obj->Method(Att1 => { Cause => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::TaskStartFailedEventDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Cause

=head1 DESCRIPTION

Contains details about a task that failed to start during an execution.

=head1 ATTRIBUTES


=head2 Cause => Str

  A more detailed explanation of the cause of the failure.


=head2 Error => Str

  The error code of the failure.


=head2 B<REQUIRED> Resource => Str

  The service name of the resource in a task state.


=head2 B<REQUIRED> ResourceType => Str

  The action of the resource called by a task state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

