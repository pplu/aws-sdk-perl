package Paws::Health::EventType;
  use Moose;
  has Category => (is => 'ro', isa => 'Str', request_name => 'category', traits => ['NameInRequest']);
  has Code => (is => 'ro', isa => 'Str', request_name => 'code', traits => ['NameInRequest']);
  has Service => (is => 'ro', isa => 'Str', request_name => 'service', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::EventType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::EventType object:

  $service_obj->Method(Att1 => { Category => $value, ..., Service => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::EventType object:

  $result = $service_obj->Method(...);
  $result->Att1->Category

=head1 DESCRIPTION

Metadata about a type of event that is reported by AWS Health. Data
consists of the category (for example, C<issue>), the service (for
example, C<EC2>), and the event type code (for example,
C<AWS_EC2_SYSTEM_MAINTENANCE_EVENT>).

=head1 ATTRIBUTES


=head2 Category => Str

  A list of event type category codes (C<issue>, C<scheduledChange>, or
C<accountNotification>).


=head2 Code => Str

  The unique identifier for the event type. The format is
C<AWS_I<SERVICE>_I<DESCRIPTION> >; for example,
C<AWS_EC2_SYSTEM_MAINTENANCE_EVENT>.


=head2 Service => Str

  The AWS service that is affected by the event. For example, C<EC2>,
C<RDS>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

