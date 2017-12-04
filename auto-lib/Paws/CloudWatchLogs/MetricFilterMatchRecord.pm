package Paws::CloudWatchLogs::MetricFilterMatchRecord;
  use Moose;
  has EventMessage => (is => 'ro', isa => 'Str', request_name => 'eventMessage', traits => ['NameInRequest']);
  has EventNumber => (is => 'ro', isa => 'Int', request_name => 'eventNumber', traits => ['NameInRequest']);
  has ExtractedValues => (is => 'ro', isa => 'Paws::CloudWatchLogs::ExtractedValues', request_name => 'extractedValues', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::MetricFilterMatchRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::MetricFilterMatchRecord object:

  $service_obj->Method(Att1 => { EventMessage => $value, ..., ExtractedValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::MetricFilterMatchRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->EventMessage

=head1 DESCRIPTION

Represents a matched event.

=head1 ATTRIBUTES


=head2 EventMessage => Str

  The raw event data.


=head2 EventNumber => Int

  The event number.


=head2 ExtractedValues => L<Paws::CloudWatchLogs::ExtractedValues>

  The values extracted from the event data by the filter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

