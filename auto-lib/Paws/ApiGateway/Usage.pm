
package Paws::ApiGateway::Usage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw/ApiGateway_MapOfKeyUsages/;
  has EndDate => (is => 'ro', isa => Str);
  has Items => (is => 'ro', isa => ApiGateway_MapOfKeyUsages);
  has Position => (is => 'ro', isa => Str);
  has StartDate => (is => 'ro', isa => Str);
  has UsagePlanId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EndDate' => {
                              'type' => 'Str'
                            },
               'Position' => {
                               'type' => 'Str'
                             },
               'Items' => {
                            'class' => 'Paws::ApiGateway::MapOfKeyUsages',
                            'type' => 'ApiGateway_MapOfKeyUsages'
                          },
               'UsagePlanId' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StartDate' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'EndDate' => 'endDate',
                       'Position' => 'position',
                       'Items' => 'values',
                       'UsagePlanId' => 'usagePlanId',
                       'StartDate' => 'startDate'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Usage

=head1 ATTRIBUTES


=head2 EndDate => Str

The ending date of the usage data.


=head2 Items => ApiGateway_MapOfKeyUsages

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

