package Paws::Robomaker::DeploymentJob;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has DeploymentApplicationConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::DeploymentApplicationConfig]', request_name => 'deploymentApplicationConfigs', traits => ['NameInRequest']);
  has DeploymentConfig => (is => 'ro', isa => 'Paws::Robomaker::DeploymentConfig', request_name => 'deploymentConfig', traits => ['NameInRequest']);
  has FailureCode => (is => 'ro', isa => 'Str', request_name => 'failureCode', traits => ['NameInRequest']);
  has FailureReason => (is => 'ro', isa => 'Str', request_name => 'failureReason', traits => ['NameInRequest']);
  has Fleet => (is => 'ro', isa => 'Str', request_name => 'fleet', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DeploymentJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::DeploymentJob object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::DeploymentJob object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a deployment job.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the deployment job.


=head2 CreatedAt => Str

  The time, in milliseconds since the epoch, when the deployment job was
created.


=head2 DeploymentApplicationConfigs => ArrayRef[L<Paws::Robomaker::DeploymentApplicationConfig>]

  The deployment application configuration.


=head2 DeploymentConfig => L<Paws::Robomaker::DeploymentConfig>

  The deployment configuration.


=head2 FailureCode => Str

  The deployment job failure code.


=head2 FailureReason => Str

  A short description of the reason why the deployment job failed.


=head2 Fleet => Str

  The Amazon Resource Name (ARN) of the fleet.


=head2 Status => Str

  The status of the deployment job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

