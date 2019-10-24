# Generated from json/callresult_class.tt

package Paws::SSM::UpdateAssociationResult;
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
                                             'class' => 'Paws::SSM::AssociationDescription',
                                             'type' => 'SSM_AssociationDescription'
                                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateAssociationResult

=head1 ATTRIBUTES


=head2 AssociationDescription => SSM_AssociationDescription

The description of the association that was updated.


=head2 _request_id => Str


=cut

1;