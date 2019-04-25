
package Paws::SSM::DescribeAssociation;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str');
  has AssociationVersion => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeAssociation - Arguments for method DescribeAssociation on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAssociation on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAssociation.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeAssociationResult = $ssm->DescribeAssociation(
      AssociationId      => 'MyAssociationId',         # OPTIONAL
      AssociationVersion => 'MyAssociationVersion',    # OPTIONAL
      InstanceId         => 'MyInstanceId',            # OPTIONAL
      Name               => 'MyDocumentName',          # OPTIONAL
    );

    # Results:
    my $AssociationDescription =
      $DescribeAssociationResult->AssociationDescription;

    # Returns a L<Paws::SSM::DescribeAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeAssociation>

=head1 ATTRIBUTES


=head2 AssociationId => Str

The association ID for which you want information.



=head2 AssociationVersion => Str

Specify the association version to retrieve. To view the latest
version, either specify C<$LATEST> for this parameter, or omit this
parameter. To view a list of all associations for an instance, use
ListInstanceAssociations. To get a list of versions for a specific
association, use ListAssociationVersions.



=head2 InstanceId => Str

The instance ID.



=head2 Name => Str

The name of the Systems Manager document.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAssociation in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

