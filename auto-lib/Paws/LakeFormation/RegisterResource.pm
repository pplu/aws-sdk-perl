
package Paws::LakeFormation::RegisterResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has UseServiceLinkedRole => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::RegisterResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::RegisterResource - Arguments for method RegisterResource on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterResource on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method RegisterResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterResource.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $RegisterResourceResponse = $lakeformation->RegisterResource(
      ResourceArn          => 'MyResourceArnString',
      RoleArn              => 'MyIAMRoleArn',          # OPTIONAL
      UseServiceLinkedRole => 1,                       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/RegisterResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource that you want to
register.



=head2 RoleArn => Str

The identifier for the role that registers the resource.



=head2 UseServiceLinkedRole => Bool

Designates an AWS Identity and Access Management (IAM) service-linked
role by registering this role with the Data Catalog. A service-linked
role is a unique type of IAM role that is linked directly to Lake
Formation.

For more information, see Using Service-Linked Roles for Lake Formation
(https://docs-aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterResource in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

