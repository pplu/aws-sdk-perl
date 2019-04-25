package Paws::KinesisAnalyticsV2::Input;
  use Moose;
  has InputParallelism => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::InputParallelism');
  has InputProcessingConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::InputProcessingConfiguration');
  has InputSchema => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::SourceSchema', required => 1);
  has KinesisFirehoseInput => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::KinesisFirehoseInput');
  has KinesisStreamsInput => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::KinesisStreamsInput');
  has NamePrefix => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::Input

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::Input object:

  $service_obj->Method(Att1 => { InputParallelism => $value, ..., NamePrefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::Input object:

  $result = $service_obj->Method(...);
  $result->Att1->InputParallelism

=head1 DESCRIPTION

When you configure the application input for an SQL-based Amazon
Kinesis Data Analytics application, you specify the streaming source,
the in-application stream name that is created, and the mapping between
the two.

=head1 ATTRIBUTES


=head2 InputParallelism => L<Paws::KinesisAnalyticsV2::InputParallelism>

  Describes the number of in-application streams to create.


=head2 InputProcessingConfiguration => L<Paws::KinesisAnalyticsV2::InputProcessingConfiguration>

  The InputProcessingConfiguration for the input. An input processor
transforms records as they are received from the stream, before the
application's SQL code executes. Currently, the only input processing
configuration available is InputLambdaProcessor.


=head2 B<REQUIRED> InputSchema => L<Paws::KinesisAnalyticsV2::SourceSchema>

  Describes the format of the data in the streaming source, and how each
data element maps to corresponding columns in the in-application stream
that is being created.

Also used to describe the format of the reference data source.


=head2 KinesisFirehoseInput => L<Paws::KinesisAnalyticsV2::KinesisFirehoseInput>

  If the streaming source is an Amazon Kinesis Data Firehose delivery
stream, identifies the delivery stream's ARN.


=head2 KinesisStreamsInput => L<Paws::KinesisAnalyticsV2::KinesisStreamsInput>

  If the streaming source is an Amazon Kinesis data stream, identifies
the stream's Amazon Resource Name (ARN).


=head2 B<REQUIRED> NamePrefix => Str

  The name prefix to use when creating an in-application stream. Suppose
that you specify a prefix "C<MyInApplicationStream>." Kinesis Data
Analytics then creates one or more (as per the C<InputParallelism>
count you specified) in-application streams with the names
"C<MyInApplicationStream_001>," "C<MyInApplicationStream_002>," and so
on.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

