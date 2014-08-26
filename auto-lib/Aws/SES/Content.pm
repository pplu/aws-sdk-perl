package Aws::SES::Content {
  use Moose;
  with ('AWS::API::ResultParser');
  has Charset => (is => 'ro', isa => 'Str');
  has Data => (is => 'ro', isa => 'Str', required => 1);
}
1
