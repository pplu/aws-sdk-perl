package Paws::CloudWatchLogs::InputLogEvent;
  use Moose;
  has message => (is => 'ro', isa => 'Str', required => 1);
  has timestamp => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::InputLogEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::InputLogEvent object:

  $service_obj->Method(Att1 => { message => $value, ..., timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::InputLogEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->message

=head1 DESCRIPTION

A log event is a record of some activity that was recorded by the
application or resource being monitored. The log event record that
Amazon CloudWatch Logs understands contains two properties: the
timestamp of when the event occurred, and the raw event message.

=head1 ATTRIBUTES

=head2 B<REQUIRED> message => Str

  

=head2 B<REQUIRED> timestamp => Int

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

