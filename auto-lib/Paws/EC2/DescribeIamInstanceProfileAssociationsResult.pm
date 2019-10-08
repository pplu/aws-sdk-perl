
package Paws::EC2::DescribeIamInstanceProfileAssociationsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_IamInstanceProfileAssociation/;
  has IamInstanceProfileAssociations => (is => 'ro', isa => ArrayRef[EC2_IamInstanceProfileAssociation]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IamInstanceProfileAssociations' => {
                                                     'class' => 'Paws::EC2::IamInstanceProfileAssociation',
                                                     'type' => 'ArrayRef[EC2_IamInstanceProfileAssociation]'
                                                   }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'IamInstanceProfileAssociations' => 'iamInstanceProfileAssociationSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeIamInstanceProfileAssociationsResult

=head1 ATTRIBUTES


=head2 IamInstanceProfileAssociations => ArrayRef[EC2_IamInstanceProfileAssociation]

Information about the IAM instance profile associations.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

