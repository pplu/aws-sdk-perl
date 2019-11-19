# Generated from json/callresult_class.tt

package Paws::Datasync::ListLocationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Datasync::Types qw/Datasync_LocationListEntry/;
  has Locations => (is => 'ro', isa => ArrayRef[Datasync_LocationListEntry]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Locations' => {
                                'type' => 'ArrayRef[Datasync_LocationListEntry]',
                                'class' => 'Paws::Datasync::LocationListEntry'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ListLocationsResponse

=head1 ATTRIBUTES


=head2 Locations => ArrayRef[Datasync_LocationListEntry]

An array that contains a list of locations.


=head2 NextToken => Str

An opaque string that indicates the position at which to begin
returning the next list of locations.


=head2 _request_id => Str


=cut

1;