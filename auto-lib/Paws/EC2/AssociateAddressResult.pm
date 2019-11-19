
package Paws::EC2::AssociateAddressResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has AssociationId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AssociationId' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'AssociationId' => 'associationId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateAddressResult

=head1 ATTRIBUTES


=head2 AssociationId => Str

[EC2-VPC] The ID that represents the association of the Elastic IP
address with an instance.


=head2 _request_id => Str


=cut

