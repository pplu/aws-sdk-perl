# Generated by default/object.tt
package Paws::CustomerProfiles::TriggerProperties;
  use Moose;
  has Scheduled => (is => 'ro', isa => 'Paws::CustomerProfiles::ScheduledTriggerProperties');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::TriggerProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CustomerProfiles::TriggerProperties object:

  $service_obj->Method(Att1 => { Scheduled => $value, ..., Scheduled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CustomerProfiles::TriggerProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->Scheduled

=head1 DESCRIPTION

Specifies the configuration details that control the trigger for a
flow. Currently, these settings only apply to the Scheduled trigger
type.

=head1 ATTRIBUTES


=head2 Scheduled => L<Paws::CustomerProfiles::ScheduledTriggerProperties>

Specifies the configuration details of a schedule-triggered flow that
you define.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

