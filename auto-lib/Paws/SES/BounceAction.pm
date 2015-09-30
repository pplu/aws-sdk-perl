package Paws::SES::BounceAction;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has Sender => (is => 'ro', isa => 'Str', required => 1);
  has SmtpReplyCode => (is => 'ro', isa => 'Str', required => 1);
  has StatusCode => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');
1;
