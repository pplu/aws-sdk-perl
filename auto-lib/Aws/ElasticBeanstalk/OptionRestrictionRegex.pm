package Aws::ElasticBeanstalk::OptionRestrictionRegex {
  use Moose;
  with ('AWS::API::ResultParser');
  has Label => (is => 'ro', isa => 'Str');
  has Pattern => (is => 'ro', isa => 'Str');
}
1
