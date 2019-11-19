# Generated from callresult_class.tt

package Paws::ImportExport::GetShippingLabelOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ImportExport::Types qw//;
  has ShippingLabelURL => (is => 'ro', isa => Str);
  has Warning => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ShippingLabelURL' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Warning' => {
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

Paws::ImportExport::GetShippingLabelOutput

=head1 ATTRIBUTES


=head2 ShippingLabelURL => Str




=head2 Warning => Str




=head2 _request_id => Str


=cut

