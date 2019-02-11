package Paws::ApiGatewayV2::Deployment;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', request_name => 'createdDate', traits => ['NameInRequest']);
  has DeploymentId => (is => 'ro', isa => 'Str', request_name => 'deploymentId', traits => ['NameInRequest']);
  has DeploymentStatus => (is => 'ro', isa => 'Str', request_name => 'deploymentStatus', traits => ['NameInRequest']);
  has DeploymentStatusMessage => (is => 'ro', isa => 'Str', request_name => 'deploymentStatusMessage', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::Deployment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::Deployment object:

  $service_obj->Method(Att1 => { CreatedDate => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::Deployment object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDate

=head1 DESCRIPTION

An immutable representation of an API that can be called by users. A
Deployment must be associated with a Stage for it to be callable over
the internet.

=head1 ATTRIBUTES


=head2 CreatedDate => Str

  The date and time when the Deployment resource was created.


=head2 DeploymentId => Str

  The identifier for the deployment.


=head2 DeploymentStatus => Str

  The status of the deployment: PENDING, FAILED, or SUCCEEDED.


=head2 DeploymentStatusMessage => Str

  May contain additional feedback on the status of an API deployment.


=head2 Description => Str

  The description for the deployment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

