
package Paws::EKS::UpdateClusterVersionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EKS::Types qw/EKS_Update/;
  has Update => (is => 'ro', isa => EKS_Update);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Update' => {
                             'class' => 'Paws::EKS::Update',
                             'type' => 'EKS_Update'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Update' => 'update'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::UpdateClusterVersionResponse

=head1 ATTRIBUTES


=head2 Update => EKS_Update

The full description of the specified update


=head2 _request_id => Str


=cut

