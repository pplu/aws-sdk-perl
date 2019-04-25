
package Paws::ApiGateway::Usage;
  use Moose;
  has EndDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endDate');
  has Items => (is => 'ro', isa => 'Paws::ApiGateway::MapOfKeyUsages', traits => ['NameInRequest'], request_name => 'values');
  has Position => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'position');
  has StartDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startDate');
  has UsagePlanId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'usagePlanId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Usage

=head1 ATTRIBUTES


=head2 EndDate => Str

The ending date of the usage data.


=head2 Items => L<Paws::ApiGateway::MapOfKeyUsages>

The usage data, as daily logs of used and remaining quotas, over the
specified time interval indexed over the API keys in a usage plan. For
example, C<{..., "values" : { "{api_key}" : [ [0, 100], [10, 90], [100,
10]]}>, where C<{api_key}> stands for an API key value and the daily
log entry is of the format C<[used quota, remaining quota]>.


=head2 Position => Str




=head2 StartDate => Str

The starting date of the usage data.


=head2 UsagePlanId => Str

The plan Id associated with this usage data.


=head2 _request_id => Str


=cut

