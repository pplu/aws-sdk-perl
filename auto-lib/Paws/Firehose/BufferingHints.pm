package Paws::Firehose::BufferingHints;
  use Moose;
  has IntervalInSeconds => (is => 'ro', isa => 'Int');
  has SizeInMBs => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::BufferingHints

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::BufferingHints object:

  $service_obj->Method(Att1 => { IntervalInSeconds => $value, ..., SizeInMBs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::BufferingHints object:

  $result = $service_obj->Method(...);
  $result->Att1->IntervalInSeconds

=head1 DESCRIPTION

Describes hints for the buffering to perform before delivering data to
the destination. These options are treated as hints, and therefore
Kinesis Data Firehose might choose to use different values when it is
optimal.

=head1 ATTRIBUTES


=head2 IntervalInSeconds => Int

  Buffer incoming data for the specified period of time, in seconds,
before delivering it to the destination. The default value is 300.


=head2 SizeInMBs => Int

  Buffer incoming data to the specified size, in MBs, before delivering
it to the destination. The default value is 5.

We recommend setting this parameter to a value greater than the amount
of data you typically ingest into the delivery stream in 10 seconds.
For example, if you typically ingest data at 1 MB/sec, the value should
be 10 MB or higher.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

