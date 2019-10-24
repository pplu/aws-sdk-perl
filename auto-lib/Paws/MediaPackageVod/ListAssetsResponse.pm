
package Paws::MediaPackageVod::ListAssetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaPackageVod::Types qw/MediaPackageVod_AssetShallow/;
  has Assets => (is => 'ro', isa => ArrayRef[MediaPackageVod_AssetShallow]);
  has NextToken => (is => 'ro', isa => Str);

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
               'Assets' => {
                             'class' => 'Paws::MediaPackageVod::AssetShallow',
                             'type' => 'ArrayRef[MediaPackageVod_AssetShallow]'
                           }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Assets' => 'assets'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::ListAssetsResponse

=head1 ATTRIBUTES


=head2 Assets => ArrayRef[MediaPackageVod_AssetShallow]

A list of MediaPackage VOD Asset resources.


=head2 NextToken => Str

A token that can be used to resume pagination from the end of the
collection.


=head2 _request_id => Str


=cut

