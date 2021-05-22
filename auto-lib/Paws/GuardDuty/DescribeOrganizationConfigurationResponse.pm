
package Paws::GuardDuty::DescribeOrganizationConfigurationResponse;
  use Moose;
  has AutoEnable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoEnable', required => 1);
  has DataSources => (is => 'ro', isa => 'Paws::GuardDuty::OrganizationDataSourceConfigurationsResult', traits => ['NameInRequest'], request_name => 'dataSources');
  has MemberAccountLimitReached => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'memberAccountLimitReached', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DescribeOrganizationConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoEnable => Bool

Indicates whether GuardDuty is automatically enabled for accounts added
to the organization.


=head2 DataSources => L<Paws::GuardDuty::OrganizationDataSourceConfigurationsResult>

Describes which data sources are enabled automatically for member
accounts.


=head2 B<REQUIRED> MemberAccountLimitReached => Bool

Indicates whether the maximum number of allowed member accounts are
already associated with the delegated administrator account for your
organization.


=head2 _request_id => Str


=cut

