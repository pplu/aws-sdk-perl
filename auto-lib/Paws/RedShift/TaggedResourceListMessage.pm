# Generated from callresult_class.tt

package Paws::RedShift::TaggedResourceListMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_TaggedResource/;
  has Marker => (is => 'ro', isa => Str);
  has TaggedResources => (is => 'ro', isa => ArrayRef[RedShift_TaggedResource]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               'TaggedResources' => {
                                      'class' => 'Paws::RedShift::TaggedResource',
                                      'type' => 'ArrayRef[RedShift_TaggedResource]'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TaggedResources' => 'TaggedResource'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::TaggedResourceListMessage

=head1 ATTRIBUTES


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the C<Marker> parameter and retrying the command. If
the C<Marker> field is empty, all response records have been retrieved
for the request.


=head2 TaggedResources => ArrayRef[RedShift_TaggedResource]

A list of tags with their associated resources.


=head2 _request_id => Str


=cut

