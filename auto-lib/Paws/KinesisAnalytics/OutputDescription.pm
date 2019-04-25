package Paws::KinesisAnalytics::OutputDescription;
  use Moose;
  has DestinationSchema => (is => 'ro', isa => 'Paws::KinesisAnalytics::DestinationSchema');
  has KinesisFirehoseOutputDescription => (is => 'ro', isa => 'Paws::KinesisAnalytics::KinesisFirehoseOutputDescription');
  has KinesisStreamsOutputDescription => (is => 'ro', isa => 'Paws::KinesisAnalytics::KinesisStreamsOutputDescription');
  has LambdaOutputDescription => (is => 'ro', isa => 'Paws::KinesisAnalytics::LambdaOutputDescription');
  has Name => (is => 'ro', isa => 'Str');
  has OutputId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::OutputDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::OutputDescription object:

  $service_obj->Method(Att1 => { DestinationSchema => $value, ..., OutputId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::OutputDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationSchema

=head1 DESCRIPTION

Describes the application output configuration, which includes the
in-application stream name and the destination where the stream data is
written. The destination can be an Amazon Kinesis stream or an Amazon
Kinesis Firehose delivery stream.

=head1 ATTRIBUTES


=head2 DestinationSchema => L<Paws::KinesisAnalytics::DestinationSchema>

  Data format used for writing data to the destination.


=head2 KinesisFirehoseOutputDescription => L<Paws::KinesisAnalytics::KinesisFirehoseOutputDescription>

  Describes the Amazon Kinesis Firehose delivery stream configured as the
destination where output is written.


=head2 KinesisStreamsOutputDescription => L<Paws::KinesisAnalytics::KinesisStreamsOutputDescription>

  Describes Amazon Kinesis stream configured as the destination where
output is written.


=head2 LambdaOutputDescription => L<Paws::KinesisAnalytics::LambdaOutputDescription>

  Describes the AWS Lambda function configured as the destination where
output is written.


=head2 Name => Str

  Name of the in-application stream configured as output.


=head2 OutputId => Str

  A unique identifier for the output configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

