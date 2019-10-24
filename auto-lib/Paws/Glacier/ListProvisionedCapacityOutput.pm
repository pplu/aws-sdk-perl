
package Paws::Glacier::ListProvisionedCapacityOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glacier::Types qw/Glacier_ProvisionedCapacityDescription/;
  has ProvisionedCapacityList => (is => 'ro', isa => ArrayRef[Glacier_ProvisionedCapacityDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProvisionedCapacityList' => {
                                              'class' => 'Paws::Glacier::ProvisionedCapacityDescription',
                                              'type' => 'ArrayRef[Glacier_ProvisionedCapacityDescription]'
                                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ListProvisionedCapacityOutput

=head1 ATTRIBUTES


=head2 ProvisionedCapacityList => ArrayRef[Glacier_ProvisionedCapacityDescription]

The response body contains the following JSON fields.


=head2 _request_id => Str


=cut

