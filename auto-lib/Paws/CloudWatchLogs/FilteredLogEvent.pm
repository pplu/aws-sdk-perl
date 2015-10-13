package Paws::CloudWatchLogs::FilteredLogEvent;
  use Moose;
  has eventId => (is => 'ro', isa => 'Str');
  has ingestionTime => (is => 'ro', isa => 'Int');
  has logStreamName => (is => 'ro', isa => 'Str');
  has message => (is => 'ro', isa => 'Str');
  has timestamp => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::FilteredLogEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::FilteredLogEvent object:

  $service_obj->Method(Att1 => { eventId => $value, ..., timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::FilteredLogEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->eventId

=head1 DESCRIPTION

Represents a matched event from a C<FilterLogEvents> request.

=head1 ATTRIBUTES

=head2 eventId => Str

  A unique identifier for this event.

=head2 ingestionTime => Int

  

=head2 logStreamName => Str

  The name of the log stream this event belongs to.

=head2 message => Str

  The data contained in the log event.

=head2 timestamp => Int

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

