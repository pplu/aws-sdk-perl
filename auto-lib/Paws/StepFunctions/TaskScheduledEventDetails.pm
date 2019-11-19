# Generated from default/object.tt
package Paws::StepFunctions::TaskScheduledEventDetails;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::StepFunctions::Types qw//;
  has Parameters => (is => 'ro', isa => Str, required => 1);
  has Region => (is => 'ro', isa => Str, required => 1);
  has Resource => (is => 'ro', isa => Str, required => 1);
  has ResourceType => (is => 'ro', isa => Str, required => 1);
  has TimeoutInSeconds => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceType' => 1,
                    'Resource' => 1,
                    'Parameters' => 1,
                    'Region' => 1
                  },
  'NameInRequest' => {
                       'Region' => 'region',
                       'Parameters' => 'parameters',
                       'ResourceType' => 'resourceType',
                       'Resource' => 'resource',
                       'TimeoutInSeconds' => 'timeoutInSeconds'
                     },
  'types' => {
               'Region' => {
                             'type' => 'Str'
                           },
               'Parameters' => {
                                 'type' => 'Str'
                               },
               'TimeoutInSeconds' => {
                                       'type' => 'Int'
                                     },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'Resource' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::TaskScheduledEventDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::TaskScheduledEventDetails object:

  $service_obj->Method(Att1 => { Parameters => $value, ..., TimeoutInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::TaskScheduledEventDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Parameters

=head1 DESCRIPTION

Contains details about a task scheduled during an execution.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Parameters => Str

  The JSON data passed to the resource referenced in a task state.


=head2 B<REQUIRED> Region => Str

  The region of the scheduled task


=head2 B<REQUIRED> Resource => Str

  The service name of the resource in a task state.


=head2 B<REQUIRED> ResourceType => Str

  The action of the resource called by a task state.


=head2 TimeoutInSeconds => Int

  The maximum allowed duration of the task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

