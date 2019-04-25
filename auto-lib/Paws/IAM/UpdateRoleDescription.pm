
package Paws::IAM::UpdateRoleDescription;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRoleDescription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::UpdateRoleDescriptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateRoleDescriptionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UpdateRoleDescription - Arguments for method UpdateRoleDescription on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRoleDescription on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method UpdateRoleDescription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRoleDescription.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $UpdateRoleDescriptionResponse = $iam->UpdateRoleDescription(
      Description => 'MyroleDescriptionType',
      RoleName    => 'MyroleNameType',

    );

    # Results:
    my $Role = $UpdateRoleDescriptionResponse->Role;

    # Returns a L<Paws::IAM::UpdateRoleDescriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/UpdateRoleDescription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Description => Str

The new description that you want to apply to the specified role.



=head2 B<REQUIRED> RoleName => Str

The name of the role that you want to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRoleDescription in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

