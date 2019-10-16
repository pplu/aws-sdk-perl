
package Paws::SES::ListReceiptFiltersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SES::Types qw/SES_ReceiptFilter/;
  has Filters => (is => 'ro', isa => ArrayRef[SES_ReceiptFilter]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Filters' => {
                              'class' => 'Paws::SES::ReceiptFilter',
                              'type' => 'ArrayRef[SES_ReceiptFilter]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListReceiptFiltersResponse

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[SES_ReceiptFilter]

A list of IP address filter data structures, which each consist of a
name, an IP address range, and whether to allow or block mail from it.


=head2 _request_id => Str


=cut

