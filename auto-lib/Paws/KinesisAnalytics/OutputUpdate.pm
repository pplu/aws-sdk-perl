package Paws::KinesisAnalytics::OutputUpdate;
  use Moose;
  has DestinationSchemaUpdate => (is => 'ro', isa => 'Paws::KinesisAnalytics::DestinationSchema');
  has KinesisFirehoseOutputUpdate => (is => 'ro', isa => 'Paws::KinesisAnalytics::KinesisFirehoseOutputUpdate');
  has KinesisStreamsOutputUpdate => (is => 'ro', isa => 'Paws::KinesisAnalytics::KinesisStreamsOutputUpdate');
  has LambdaOutputUpdate => (is => 'ro', isa => 'Paws::KinesisAnalytics::LambdaOutputUpdate');
  has NameUpdate => (is => 'ro', isa => 'Str');
  has OutputId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::OutputUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::OutputUpdate object:

  $service_obj->Method(Att1 => { DestinationSchemaUpdate => $value, ..., OutputId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::OutputUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationSchemaUpdate

=head1 DESCRIPTION

Describes updates to the output configuration identified by the
C<OutputId>.

=head1 ATTRIBUTES


=head2 DestinationSchemaUpdate => L<Paws::KinesisAnalytics::DestinationSchema>

  Describes the data format when records are written to the destination.
For more information, see Configuring Application Output
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html).


=head2 KinesisFirehoseOutputUpdate => L<Paws::KinesisAnalytics::KinesisFirehoseOutputUpdate>

  Describes an Amazon Kinesis Firehose delivery stream as the destination
for the output.


=head2 KinesisStreamsOutputUpdate => L<Paws::KinesisAnalytics::KinesisStreamsOutputUpdate>

  Describes an Amazon Kinesis stream as the destination for the output.


=head2 LambdaOutputUpdate => L<Paws::KinesisAnalytics::LambdaOutputUpdate>

  Describes an AWS Lambda function as the destination for the output.


=head2 NameUpdate => Str

  If you want to specify a different in-application stream for this
output configuration, use this field to specify the new in-application
stream name.


=head2 B<REQUIRED> OutputId => Str

  Identifies the specific output configuration that you want to update.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

