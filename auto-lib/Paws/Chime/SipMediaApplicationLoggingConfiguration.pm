# Generated by default/object.tt
package Paws::Chime::SipMediaApplicationLoggingConfiguration;
  use Moose;
  has EnableSipMediaApplicationMessageLogs => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::SipMediaApplicationLoggingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::SipMediaApplicationLoggingConfiguration object:

  $service_obj->Method(Att1 => { EnableSipMediaApplicationMessageLogs => $value, ..., EnableSipMediaApplicationMessageLogs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::SipMediaApplicationLoggingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->EnableSipMediaApplicationMessageLogs

=head1 DESCRIPTION

Logging configuration of the SIP media application.

=head1 ATTRIBUTES


=head2 EnableSipMediaApplicationMessageLogs => Bool

Enables application message logs for the SIP media application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

