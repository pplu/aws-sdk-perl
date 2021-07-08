
package Paws::DeviceFarm::UpdateTestGridProject;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' , required => 1);
  has VpcConfig => (is => 'ro', isa => 'Paws::DeviceFarm::TestGridVpcConfig', traits => ['NameInRequest'], request_name => 'vpcConfig' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTestGridProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::UpdateTestGridProjectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UpdateTestGridProject - Arguments for method UpdateTestGridProject on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTestGridProject on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method UpdateTestGridProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTestGridProject.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $UpdateTestGridProjectResult = $devicefarm->UpdateTestGridProject(
      ProjectArn  => 'MyDeviceFarmArn',
      Description => 'MyResourceDescription',    # OPTIONAL
      Name        => 'MyResourceName',           # OPTIONAL
      VpcConfig   => {
        SecurityGroupIds => [
          'MyNonEmptyString', ...                # min: 1, max: 4096
        ],    # min: 1, max: 5
        SubnetIds => [
          'MyNonEmptyString', ...    # min: 1, max: 4096
        ],    # min: 1, max: 8
        VpcId => 'MyNonEmptyString',    # min: 1, max: 4096

      },    # OPTIONAL
    );

    # Results:
    my $TestGridProject = $UpdateTestGridProjectResult->TestGridProject;

    # Returns a L<Paws::DeviceFarm::UpdateTestGridProjectResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/UpdateTestGridProject>

=head1 ATTRIBUTES


=head2 Description => Str

Human-readable description for the project.



=head2 Name => Str

Human-readable name for the project.



=head2 B<REQUIRED> ProjectArn => Str

ARN of the project to update.



=head2 VpcConfig => L<Paws::DeviceFarm::TestGridVpcConfig>

The VPC security groups and subnets that are attached to a project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTestGridProject in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

