package Paws::RDS::AccountQuota {
  use Moose;
  has AccountQuotaName => (is => 'ro', isa => 'Str');
  has Max => (is => 'ro', isa => 'Num');
  has Used => (is => 'ro', isa => 'Num');
}
1;
