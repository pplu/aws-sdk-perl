package Paws::KinesisAnalyticsV2::OutputUpdate;
  use Moose;
  has DestinationSchemaUpdate => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::DestinationSchema');
  has KinesisFirehoseOutputUpdate => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::KinesisFirehoseOutputUpdate');
  has KinesisStreamsOutputUpdate => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::KinesisStreamsOutputUpdate');
  has LambdaOutputUpdate => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::LambdaOutputUpdate');
  has NameUpdate => (is => 'ro', isa => 'Str');
  has OutputId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::OutputUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::OutputUpdate object:

  $service_obj->Method(Att1 => { DestinationSchemaUpdate => $value, ..., OutputId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::OutputUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationSchemaUpdate

=head1 DESCRIPTION

For an SQL-based Amazon Kinesis Data Analytics application, describes
updates to the output configuration identified by the C<OutputId>.

=head1 ATTRIBUTES


=head2 DestinationSchemaUpdate => L<Paws::KinesisAnalyticsV2::DestinationSchema>

  Describes the data format when records are written to the destination.


=head2 KinesisFirehoseOutputUpdate => L<Paws::KinesisAnalyticsV2::KinesisFirehoseOutputUpdate>

  Describes a Kinesis Data Firehose delivery stream as the destination
for the output.


=head2 KinesisStreamsOutputUpdate => L<Paws::KinesisAnalyticsV2::KinesisStreamsOutputUpdate>

  Describes a Kinesis data stream as the destination for the output.


=head2 LambdaOutputUpdate => L<Paws::KinesisAnalyticsV2::LambdaOutputUpdate>

  Describes an AWS Lambda function as the destination for the output.


=head2 NameUpdate => Str

  If you want to specify a different in-application stream for this
output configuration, use this field to specify the new in-application
stream name.


=head2 B<REQUIRED> OutputId => Str

  Identifies the specific output configuration that you want to update.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

