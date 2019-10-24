# Generated from json/callresult_class.tt

package Paws::Config::ListAggregateDiscoveredResourcesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_AggregateResourceIdentifier/;
  has NextToken => (is => 'ro', isa => Str);
  has ResourceIdentifiers => (is => 'ro', isa => ArrayRef[Config_AggregateResourceIdentifier]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceIdentifiers' => {
                                          'class' => 'Paws::Config::AggregateResourceIdentifier',
                                          'type' => 'ArrayRef[Config_AggregateResourceIdentifier]'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::ListAggregateDiscoveredResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 ResourceIdentifiers => ArrayRef[Config_AggregateResourceIdentifier]

Returns a list of C<ResourceIdentifiers> objects.


=head2 _request_id => Str


=cut

1;