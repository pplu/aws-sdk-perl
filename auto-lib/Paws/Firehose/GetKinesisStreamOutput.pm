
package Paws::Firehose::GetKinesisStreamOutput;
  use Moose;
  has CredentialsForReadingKinesisStream => (is => 'ro', isa => 'Paws::Firehose::SessionCredentials');
  has KinesisStreamARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::GetKinesisStreamOutput

=head1 ATTRIBUTES


=head2 CredentialsForReadingKinesisStream => L<Paws::Firehose::SessionCredentials>




=head2 KinesisStreamARN => Str




=head2 _request_id => Str


=cut

1;