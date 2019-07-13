
package Paws::ES::UpgradeElasticsearchDomainResponse;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str');
  has PerformCheckOnly => (is => 'ro', isa => 'Bool');
  has TargetVersion => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::UpgradeElasticsearchDomainResponse

=head1 ATTRIBUTES


=head2 DomainName => Str




=head2 PerformCheckOnly => Bool

This flag, when set to True, indicates that an Upgrade Eligibility
Check needs to be performed. This will not actually perform the
Upgrade.


=head2 TargetVersion => Str

The version of Elasticsearch that you intend to upgrade the domain to.


=head2 _request_id => Str


=cut

