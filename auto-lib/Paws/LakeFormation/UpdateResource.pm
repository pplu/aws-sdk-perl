
package Paws::LakeFormation::UpdateResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::UpdateResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::UpdateResource - Arguments for method UpdateResource on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResource on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method UpdateResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResource.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $UpdateResourceResponse = $lakeformation->UpdateResource(
      ResourceArn => 'MyResourceArnString',
      RoleArn     => 'MyIAMRoleArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/UpdateResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The resource ARN.



=head2 B<REQUIRED> RoleArn => Str

The new role to use for the given resource registered in AWS Lake
Formation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResource in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

