
package Paws::EC2::ReplaceIamInstanceProfileAssociation;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has IamInstanceProfile => (is => 'ro', isa => 'Paws::EC2::IamInstanceProfileSpecification', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceIamInstanceProfileAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ReplaceIamInstanceProfileAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReplaceIamInstanceProfileAssociation - Arguments for method ReplaceIamInstanceProfileAssociation on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReplaceIamInstanceProfileAssociation on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ReplaceIamInstanceProfileAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReplaceIamInstanceProfileAssociation.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ReplaceIamInstanceProfileAssociationResult =
      $ec2->ReplaceIamInstanceProfileAssociation(
      AssociationId      => 'MyString',
      IamInstanceProfile => {
        Arn  => 'MyString',
        Name => 'MyString',
      },

      );

    # Results:
    my $IamInstanceProfileAssociation =
      $ReplaceIamInstanceProfileAssociationResult
      ->IamInstanceProfileAssociation;

    # Returns a L<Paws::EC2::ReplaceIamInstanceProfileAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ReplaceIamInstanceProfileAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationId => Str

The ID of the existing IAM instance profile association.



=head2 B<REQUIRED> IamInstanceProfile => L<Paws::EC2::IamInstanceProfileSpecification>

The IAM instance profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReplaceIamInstanceProfileAssociation in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

