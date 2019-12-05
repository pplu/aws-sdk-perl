package Paws::Chime::CreateAttendeeRequestItem;
  use Moose;
  has ExternalUserId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateAttendeeRequestItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::CreateAttendeeRequestItem object:

  $service_obj->Method(Att1 => { ExternalUserId => $value, ..., ExternalUserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::CreateAttendeeRequestItem object:

  $result = $service_obj->Method(...);
  $result->Att1->ExternalUserId

=head1 DESCRIPTION

The Amazon Chime SDK attendee fields to create, used with the
BatchCreateAttendee action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExternalUserId => Str

  The Amazon Chime SDK external user ID. Links the attendee to an
identity managed by a builder application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

