package Aws::Support::RecentCaseCommunications {
  use Moose;
  has communications => (is => 'ro', isa => 'ArrayRef[Aws::Support::Communication]');
  has nextToken => (is => 'ro', isa => 'Str');
}
1
