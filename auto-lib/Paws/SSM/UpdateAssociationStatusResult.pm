# Generated from json/callresult_class.tt

package Paws::SSM::UpdateAssociationStatusResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw/SSM_AssociationDescription/;
  has AssociationDescription => (is => 'ro', isa => SSM_AssociationDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AssociationDescription' => {
                                             'type' => 'SSM_AssociationDescription',
                                             'class' => 'Paws::SSM::AssociationDescription'
                                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateAssociationStatusResult

=head1 ATTRIBUTES


=head2 AssociationDescription => SSM_AssociationDescription

Information about the association.


=head2 _request_id => Str


=cut

1;