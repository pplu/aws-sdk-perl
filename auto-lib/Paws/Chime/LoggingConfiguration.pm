package Paws::Chime::LoggingConfiguration;
  use Moose;
  has EnableSIPLogs => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::LoggingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::LoggingConfiguration object:

  $service_obj->Method(Att1 => { EnableSIPLogs => $value, ..., EnableSIPLogs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::LoggingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->EnableSIPLogs

=head1 DESCRIPTION

The logging configuration associated with an Amazon Chime Voice
Connector. Specifies whether SIP message logs are enabled for sending
to Amazon CloudWatch Logs.

=head1 ATTRIBUTES


=head2 EnableSIPLogs => Bool

  When true, enables SIP message logs for sending to Amazon CloudWatch
Logs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

