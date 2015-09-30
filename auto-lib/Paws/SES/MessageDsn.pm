package Paws::SES::MessageDsn;
  use Moose;
  has ArrivalDate => (is => 'ro', isa => 'Str');
  has ExtensionFields => (is => 'ro', isa => 'ArrayRef[Paws::SES::ExtensionField]');
  has ReportingMta => (is => 'ro', isa => 'Str', required => 1);
1;
