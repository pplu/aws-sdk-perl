# Generated from json/callresult_class.tt

package Paws::Config::BatchGetAggregateResourceConfigResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_BaseConfigurationItem Config_AggregateResourceIdentifier/;
  has BaseConfigurationItems => (is => 'ro', isa => ArrayRef[Config_BaseConfigurationItem]);
  has UnprocessedResourceIdentifiers => (is => 'ro', isa => ArrayRef[Config_AggregateResourceIdentifier]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UnprocessedResourceIdentifiers' => {
                                                     'class' => 'Paws::Config::AggregateResourceIdentifier',
                                                     'type' => 'ArrayRef[Config_AggregateResourceIdentifier]'
                                                   },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::Config::BatchGetAggregateResourceConfigResponse

=head1 ATTRIBUTES


=head2 BaseConfigurationItems => ArrayRef[Config_BaseConfigurationItem]

A list that contains the current configuration of one or more
resources.


=head2 UnprocessedResourceIdentifiers => ArrayRef[Config_AggregateResourceIdentifier]

A list of resource identifiers that were not processed with current
scope. The list is empty if all the resources are processed.


=head2 _request_id => Str


=cut

1;