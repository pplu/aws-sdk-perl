package Paws::SES::WorkmailAction;
  use Moose;
  has OrganizationArn => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str');
1;
