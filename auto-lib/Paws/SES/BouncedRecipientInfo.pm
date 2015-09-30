package Paws::SES::BouncedRecipientInfo;
  use Moose;
  has BounceType => (is => 'ro', isa => 'Str');
  has Recipient => (is => 'ro', isa => 'Str', required => 1);
  has RecipientArn => (is => 'ro', isa => 'Str');
  has RecipientDsnFields => (is => 'ro', isa => 'Paws::SES::RecipientDsnFields');
1;
