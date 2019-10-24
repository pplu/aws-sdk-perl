
package Paws::MobileHub::ListBundlesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MobileHub::Types qw/MobileHub_BundleDetails/;
  has BundleList => (is => 'ro', isa => ArrayRef[MobileHub_BundleDetails]);
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
               'BundleList' => {
                                 'class' => 'Paws::MobileHub::BundleDetails',
                                 'type' => 'ArrayRef[MobileHub_BundleDetails]'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'BundleList' => 'bundleList'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::ListBundlesResult

=head1 ATTRIBUTES


=head2 BundleList => ArrayRef[MobileHub_BundleDetails]

A list of bundles.


=head2 NextToken => Str

Pagination token. If non-null pagination token is returned in a result,
then pass its value in another request to fetch more entries.


=head2 _request_id => Str


=cut

