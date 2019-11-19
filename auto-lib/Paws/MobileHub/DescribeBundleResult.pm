
package Paws::MobileHub::DescribeBundleResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MobileHub::Types qw/MobileHub_BundleDetails/;
  has Details => (is => 'ro', isa => MobileHub_BundleDetails);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Details' => {
                              'type' => 'MobileHub_BundleDetails',
                              'class' => 'Paws::MobileHub::BundleDetails'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Details' => 'details'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::DescribeBundleResult

=head1 ATTRIBUTES


=head2 Details => MobileHub_BundleDetails

The details of the bundle.


=head2 _request_id => Str


=cut

