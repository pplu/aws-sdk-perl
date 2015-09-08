package Paws::S3::S3KeyFilter;
  use Moose;
  has FilterRules => (is => 'ro', isa => 'ArrayRef[Paws::S3::FilterRule]', xmlname => 'FilterRule', request_name => 'FilterRule', traits => ['Unwrapped','NameInRequest']);
1;
