package Paws::Chime::TelephonySettings;
  use Moose;
  has InboundCalling => (is => 'ro', isa => 'Bool', required => 1);
  has OutboundCalling => (is => 'ro', isa => 'Bool', required => 1);
  has SMS => (is => 'ro', isa => 'Bool', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::TelephonySettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::TelephonySettings object:

  $service_obj->Method(Att1 => { InboundCalling => $value, ..., SMS => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::TelephonySettings object:

  $result = $service_obj->Method(...);
  $result->Att1->InboundCalling

=head1 DESCRIPTION

Settings that allow management of telephony permissions for an Amazon
Chime user, such as inbound and outbound calling and text messaging.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InboundCalling => Bool

  Allows or denies inbound calling.


=head2 B<REQUIRED> OutboundCalling => Bool

  Allows or denies outbound calling.


=head2 B<REQUIRED> SMS => Bool

  Allows or denies SMS messaging.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

