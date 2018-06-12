package Paws::Glue::NotificationProperty;
  use Moose;
  has NotifyDelayAfter => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::NotificationProperty

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::NotificationProperty object:

  $service_obj->Method(Att1 => { NotifyDelayAfter => $value, ..., NotifyDelayAfter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::NotificationProperty object:

  $result = $service_obj->Method(...);
  $result->Att1->NotifyDelayAfter

=head1 DESCRIPTION

Specifies configuration properties of a notification.

=head1 ATTRIBUTES


=head2 NotifyDelayAfter => Int

  After a job run starts, the number of minutes to wait before sending a
job run delay notification.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

