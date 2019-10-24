
package Paws::MediaPackageVod::ListPackagingGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaPackageVod::Types qw/MediaPackageVod_PackagingGroup/;
  has NextToken => (is => 'ro', isa => Str);
  has PackagingGroups => (is => 'ro', isa => ArrayRef[MediaPackageVod_PackagingGroup]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PackagingGroups' => {
                                      'class' => 'Paws::MediaPackageVod::PackagingGroup',
                                      'type' => 'ArrayRef[MediaPackageVod_PackagingGroup]'
                                    }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'PackagingGroups' => 'packagingGroups'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::ListPackagingGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to resume pagination from the end of the
collection.


=head2 PackagingGroups => ArrayRef[MediaPackageVod_PackagingGroup]

A list of MediaPackage VOD PackagingGroup resources.


=head2 _request_id => Str


=cut

