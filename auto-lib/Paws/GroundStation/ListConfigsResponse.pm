
package Paws::GroundStation::ListConfigsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GroundStation::Types qw/GroundStation_ConfigListItem/;
  has ConfigList => (is => 'ro', isa => ArrayRef[GroundStation_ConfigListItem]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ConfigList' => 'configList',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConfigList' => {
                                 'type' => 'ArrayRef[GroundStation_ConfigListItem]',
                                 'class' => 'Paws::GroundStation::ConfigListItem'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListConfigsResponse

=head1 ATTRIBUTES


=head2 ConfigList => ArrayRef[GroundStation_ConfigListItem]

List of C<Config> items.


=head2 NextToken => Str

Next token returned in the response of a previous C<ListConfigs> call.
Used to get the next page of results.


=head2 _request_id => Str


=cut

