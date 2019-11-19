# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::DescribeCopyProductStatusOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw//;
  has CopyProductStatus => (is => 'ro', isa => Str);
  has StatusDetail => (is => 'ro', isa => Str);
  has TargetProductId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StatusDetail' => {
                                   'type' => 'Str'
                                 },
               'CopyProductStatus' => {
                                        'type' => 'Str'
                                      },
               'TargetProductId' => {
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

Paws::ServiceCatalog::DescribeCopyProductStatusOutput

=head1 ATTRIBUTES


=head2 CopyProductStatus => Str

The status of the copy product operation.

Valid values are: C<"SUCCEEDED">, C<"IN_PROGRESS">, C<"FAILED">
=head2 StatusDetail => Str

The status message.


=head2 TargetProductId => Str

The identifier of the copied product.


=head2 _request_id => Str


=cut

1;