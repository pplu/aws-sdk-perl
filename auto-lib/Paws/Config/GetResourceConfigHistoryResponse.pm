# Generated from json/callresult_class.tt

package Paws::Config::GetResourceConfigHistoryResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ConfigurationItem/;
  has ConfigurationItems => (is => 'ro', isa => ArrayRef[Config_ConfigurationItem]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ConfigurationItems' => 'configurationItems',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'ConfigurationItems' => {
                                         'type' => 'ArrayRef[Config_ConfigurationItem]',
                                         'class' => 'Paws::Config::ConfigurationItem'
                                       },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::Config::GetResourceConfigHistoryResponse

=head1 ATTRIBUTES


=head2 ConfigurationItems => ArrayRef[Config_ConfigurationItem]

A list that contains the configuration history of one or more
resources.


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 _request_id => Str


=cut

1;