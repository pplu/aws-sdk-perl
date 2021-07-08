
package Paws::GuardDuty::GetDetectorResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DataSources => (is => 'ro', isa => 'Paws::GuardDuty::DataSourceConfigurationsResult', traits => ['NameInRequest'], request_name => 'dataSources');
  has FindingPublishingFrequency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'findingPublishingFrequency');
  has ServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRole', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GuardDuty::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetDetectorResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the detector was created.


=head2 DataSources => L<Paws::GuardDuty::DataSourceConfigurationsResult>

Describes which data sources are enabled for the detector.


=head2 FindingPublishingFrequency => Str

The publishing frequency of the finding.

Valid values are: C<"FIFTEEN_MINUTES">, C<"ONE_HOUR">, C<"SIX_HOURS">
=head2 B<REQUIRED> ServiceRole => Str

The GuardDuty service role.


=head2 B<REQUIRED> Status => Str

The detector status.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 Tags => L<Paws::GuardDuty::TagMap>

The tags of the detector resource.


=head2 UpdatedAt => Str

The last-updated timestamp for the detector.


=head2 _request_id => Str


=cut

