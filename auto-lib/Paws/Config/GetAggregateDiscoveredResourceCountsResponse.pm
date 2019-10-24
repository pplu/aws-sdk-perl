# Generated from json/callresult_class.tt

package Paws::Config::GetAggregateDiscoveredResourceCountsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Config::Types qw/Config_GroupedResourceCount/;
  has GroupByKey => (is => 'ro', isa => Str);
  has GroupedResourceCounts => (is => 'ro', isa => ArrayRef[Config_GroupedResourceCount]);
  has NextToken => (is => 'ro', isa => Str);
  has TotalDiscoveredResources => (is => 'ro', isa => Int, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'TotalDiscoveredResources' => {
                                               'type' => 'Int'
                                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GroupByKey' => {
                                 'type' => 'Str'
                               },
               'GroupedResourceCounts' => {
                                            'class' => 'Paws::Config::GroupedResourceCount',
                                            'type' => 'ArrayRef[Config_GroupedResourceCount]'
                                          }
             },
  'IsRequired' => {
                    'TotalDiscoveredResources' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::GetAggregateDiscoveredResourceCountsResponse

=head1 ATTRIBUTES


=head2 GroupByKey => Str

The key passed into the request object. If C<GroupByKey> is not
provided, the result will be empty.


=head2 GroupedResourceCounts => ArrayRef[Config_GroupedResourceCount]

Returns a list of GroupedResourceCount objects.


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 B<REQUIRED> TotalDiscoveredResources => Int

The total number of resources that are present in an aggregator with
the filters that you provide.


=head2 _request_id => Str


=cut

1;