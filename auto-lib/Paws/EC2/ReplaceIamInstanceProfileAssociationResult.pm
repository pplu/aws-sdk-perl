
package Paws::EC2::ReplaceIamInstanceProfileAssociationResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_IamInstanceProfileAssociation/;
  has IamInstanceProfileAssociation => (is => 'ro', isa => EC2_IamInstanceProfileAssociation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IamInstanceProfileAssociation' => {
                                                    'class' => 'Paws::EC2::IamInstanceProfileAssociation',
                                                    'type' => 'EC2_IamInstanceProfileAssociation'
                                                  }
             },
  'NameInRequest' => {
                       'IamInstanceProfileAssociation' => 'iamInstanceProfileAssociation'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReplaceIamInstanceProfileAssociationResult

=head1 ATTRIBUTES


=head2 IamInstanceProfileAssociation => EC2_IamInstanceProfileAssociation

Information about the IAM instance profile association.


=head2 _request_id => Str


=cut

