
package Paws::SecurityHub::ListEnabledProductsForImportResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::SecurityHub::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has ProductSubscriptions => (is => 'ro', isa => ArrayRef[Str|Undef]);

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
               'ProductSubscriptions' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListEnabledProductsForImportResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that is required for pagination.


=head2 ProductSubscriptions => ArrayRef[Str|Undef]

A list of ARNs for the resources that represent your subscriptions to
products.


=head2 _request_id => Str


=cut

