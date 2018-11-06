package Paws::Greengrass::BulkDeploymentResult;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DeploymentArn => (is => 'ro', isa => 'Str');
  has DeploymentId => (is => 'ro', isa => 'Str');
  has DeploymentStatus => (is => 'ro', isa => 'Str');
  has DeploymentType => (is => 'ro', isa => 'Str');
  has ErrorDetails => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::ErrorDetail]');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has GroupArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::BulkDeploymentResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::BulkDeploymentResult object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., GroupArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::BulkDeploymentResult object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Information about an individual group deployment in a bulk deployment
operation.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The time, in ISO format, when the deployment was created.


=head2 DeploymentArn => Str

  The ARN of the group deployment.


=head2 DeploymentId => Str

  The ID of the group deployment.


=head2 DeploymentStatus => Str

  The current status of the group deployment: ''Pending'',
''InProgress'', ''Success'', or ''Failure''.


=head2 DeploymentType => Str

  The type of the deployment.


=head2 ErrorDetails => ArrayRef[L<Paws::Greengrass::ErrorDetail>]

  Details about the error.


=head2 ErrorMessage => Str

  The error message for a failed deployment


=head2 GroupArn => Str

  The ARN of the Greengrass group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

