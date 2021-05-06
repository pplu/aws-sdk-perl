
package Paws::RDS::StopActivityStreamResponse;
  use Moose;
  has KinesisStreamName => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::StopActivityStreamResponse

=head1 ATTRIBUTES


=head2 KinesisStreamName => Str

The name of the Amazon Kinesis data stream used for the database
activity stream.


=head2 KmsKeyId => Str

The AWS KMS key identifier used for encrypting messages in the database
activity stream.


=head2 Status => Str

The status of the database activity stream.

Valid values are: C<"stopped">, C<"starting">, C<"started">, C<"stopping">
=head2 _request_id => Str


=cut

