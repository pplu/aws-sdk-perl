# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListUploadsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Upload/;
  has NextToken => (is => 'ro', isa => Str);
  has Uploads => (is => 'ro', isa => ArrayRef[DeviceFarm_Upload]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Uploads' => 'uploads',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'Uploads' => {
                              'class' => 'Paws::DeviceFarm::Upload',
                              'type' => 'ArrayRef[DeviceFarm_Upload]'
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

Paws::DeviceFarm::ListUploadsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=head2 Uploads => ArrayRef[DeviceFarm_Upload]

Information about the uploads.


=head2 _request_id => Str


=cut

1;