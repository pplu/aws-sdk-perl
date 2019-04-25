
package Paws::SSM::DeleteAssociation;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DeleteAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeleteAssociation - Arguments for method DeleteAssociation on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAssociation on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DeleteAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAssociation.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DeleteAssociationResult = $ssm->DeleteAssociation(
      AssociationId => 'MyAssociationId',    # OPTIONAL
      InstanceId    => 'MyInstanceId',       # OPTIONAL
      Name          => 'MyDocumentName',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DeleteAssociation>

=head1 ATTRIBUTES


=head2 AssociationId => Str

The association ID that you want to delete.



=head2 InstanceId => Str

The ID of the instance.



=head2 Name => Str

The name of the Systems Manager document.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAssociation in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

