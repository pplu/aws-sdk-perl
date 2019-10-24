# Generated from json/callresult_class.tt

package Paws::Discovery::ListConfigurationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Discovery::Types qw/Discovery_Configuration/;
  has Configurations => (is => 'ro', isa => ArrayRef[Discovery_Configuration]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Configurations' => {
                                     'class' => 'Paws::Discovery::Configuration',
                                     'type' => 'ArrayRef[Discovery_Configuration]'
                                   },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Configurations' => 'configurations',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ListConfigurationsResponse

=head1 ATTRIBUTES


=head2 Configurations => ArrayRef[Discovery_Configuration]

Returns configuration details, including the configuration ID,
attribute names, and attribute values.


=head2 NextToken => Str

Token to retrieve the next set of results. For example, if your call to
ListConfigurations returned 100 items, but you set
C<ListConfigurationsRequest$maxResults> to 10, you received a set of 10
results along with this token. Use this token in the next query to
retrieve the next set of 10.


=head2 _request_id => Str


=cut

1;