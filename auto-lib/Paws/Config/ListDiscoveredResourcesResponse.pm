# Generated from json/callresult_class.tt

package Paws::Config::ListDiscoveredResourcesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ResourceIdentifier/;
  has NextToken => (is => 'ro', isa => Str);
  has ResourceIdentifiers => (is => 'ro', isa => ArrayRef[Config_ResourceIdentifier]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ResourceIdentifiers' => 'resourceIdentifiers',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ResourceIdentifiers' => {
                                          'class' => 'Paws::Config::ResourceIdentifier',
                                          'type' => 'ArrayRef[Config_ResourceIdentifier]'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::ListDiscoveredResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 ResourceIdentifiers => ArrayRef[Config_ResourceIdentifier]

The details that identify a resource that is discovered by AWS Config,
including the resource type, ID, and (if available) the custom resource
name.


=head2 _request_id => Str


=cut

1;