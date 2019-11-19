# Generated from json/callresult_class.tt

package Paws::Config::BatchGetResourceConfigResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_BaseConfigurationItem Config_ResourceKey/;
  has BaseConfigurationItems => (is => 'ro', isa => ArrayRef[Config_BaseConfigurationItem]);
  has UnprocessedResourceKeys => (is => 'ro', isa => ArrayRef[Config_ResourceKey]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'UnprocessedResourceKeys' => 'unprocessedResourceKeys',
                       'BaseConfigurationItems' => 'baseConfigurationItems'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UnprocessedResourceKeys' => {
                                              'class' => 'Paws::Config::ResourceKey',
                                              'type' => 'ArrayRef[Config_ResourceKey]'
                                            },
               'BaseConfigurationItems' => {
                                             'class' => 'Paws::Config::BaseConfigurationItem',
                                             'type' => 'ArrayRef[Config_BaseConfigurationItem]'
                                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::BatchGetResourceConfigResponse

=head1 ATTRIBUTES


=head2 BaseConfigurationItems => ArrayRef[Config_BaseConfigurationItem]

A list that contains the current configuration of one or more
resources.


=head2 UnprocessedResourceKeys => ArrayRef[Config_ResourceKey]

A list of resource keys that were not processed with the current
response. The unprocessesResourceKeys value is in the same form as
ResourceKeys, so the value can be directly provided to a subsequent
BatchGetResourceConfig operation. If there are no unprocessed resource
keys, the response contains an empty unprocessedResourceKeys list.


=head2 _request_id => Str


=cut

1;