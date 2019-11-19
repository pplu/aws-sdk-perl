# Generated from json/callresult_class.tt

package Paws::AppStream::DescribeImagePermissionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppStream::Types qw/AppStream_SharedImagePermissions/;
  has Name => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has SharedImagePermissionsList => (is => 'ro', isa => ArrayRef[AppStream_SharedImagePermissions]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Name' => {
                           'type' => 'Str'
                         },
               'SharedImagePermissionsList' => {
                                                 'class' => 'Paws::AppStream::SharedImagePermissions',
                                                 'type' => 'ArrayRef[AppStream_SharedImagePermissions]'
                                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeImagePermissionsResult

=head1 ATTRIBUTES


=head2 Name => Str

The name of the private image.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 SharedImagePermissionsList => ArrayRef[AppStream_SharedImagePermissions]

The permissions for a private image that you own.


=head2 _request_id => Str


=cut

1;