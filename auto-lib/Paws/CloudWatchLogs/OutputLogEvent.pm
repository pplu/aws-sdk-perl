package Paws::CloudWatchLogs::OutputLogEvent;
  use Moose;
  has IngestionTime => (is => 'ro', isa => 'Int', request_name => 'ingestionTime', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
  has Timestamp => (is => 'ro', isa => 'Int', request_name => 'timestamp', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::OutputLogEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::OutputLogEvent object:

  $service_obj->Method(Att1 => { IngestionTime => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::OutputLogEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->IngestionTime

=head1 DESCRIPTION

Represents a log event.

=head1 ATTRIBUTES


=head2 IngestionTime => Int

  The time the event was ingested, expressed as the number of
milliseconds after Jan 1, 1970 00:00:00 UTC.


=head2 Message => Str

  The data contained in the log event.


=head2 Timestamp => Int

  The time the event occurred, expressed as the number of milliseconds
after Jan 1, 1970 00:00:00 UTC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

