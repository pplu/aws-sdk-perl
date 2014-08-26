package Aws::SES::RawMessage {
  use Moose;
  with ('AWS::API::ResultParser');
  has Data => (is => 'ro', isa => 'Str', required => 1);
}
1
