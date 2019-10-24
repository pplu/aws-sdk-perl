
package Paws::EC2::ReplaceRouteTableAssociationResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has NewAssociationId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NewAssociationId' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'NewAssociationId' => 'newAssociationId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReplaceRouteTableAssociationResult

=head1 ATTRIBUTES


=head2 NewAssociationId => Str

The ID of the new association.


=head2 _request_id => Str


=cut

