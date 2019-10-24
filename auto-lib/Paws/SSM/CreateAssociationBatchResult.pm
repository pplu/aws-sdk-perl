# Generated from json/callresult_class.tt

package Paws::SSM::CreateAssociationBatchResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_FailedCreateAssociation SSM_AssociationDescription/;
  has Failed => (is => 'ro', isa => ArrayRef[SSM_FailedCreateAssociation]);
  has Successful => (is => 'ro', isa => ArrayRef[SSM_AssociationDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Successful' => {
                                 'class' => 'Paws::SSM::AssociationDescription',
                                 'type' => 'ArrayRef[SSM_AssociationDescription]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Failed' => {
                             'class' => 'Paws::SSM::FailedCreateAssociation',
                             'type' => 'ArrayRef[SSM_FailedCreateAssociation]'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateAssociationBatchResult

=head1 ATTRIBUTES


=head2 Failed => ArrayRef[SSM_FailedCreateAssociation]

Information about the associations that failed.


=head2 Successful => ArrayRef[SSM_AssociationDescription]

Information about the associations that succeeded.


=head2 _request_id => Str


=cut

1;