
package Paws::Robomaker::SyncDeploymentJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken', required => 1);
  has Fleet => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fleet', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SyncDeploymentJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/syncDeploymentJob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::SyncDeploymentJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::SyncDeploymentJob - Arguments for method SyncDeploymentJob on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SyncDeploymentJob on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method SyncDeploymentJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SyncDeploymentJob.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $SyncDeploymentJobResponse = $robomaker->SyncDeploymentJob(
      ClientRequestToken => 'MyClientRequestToken',
      Fleet              => 'MyArn',

    );

    # Results:
    my $Arn       = $SyncDeploymentJobResponse->Arn;
    my $CreatedAt = $SyncDeploymentJobResponse->CreatedAt;
    my $DeploymentApplicationConfigs =
      $SyncDeploymentJobResponse->DeploymentApplicationConfigs;
    my $DeploymentConfig = $SyncDeploymentJobResponse->DeploymentConfig;
    my $FailureCode      = $SyncDeploymentJobResponse->FailureCode;
    my $FailureReason    = $SyncDeploymentJobResponse->FailureReason;
    my $Fleet            = $SyncDeploymentJobResponse->Fleet;
    my $Status           = $SyncDeploymentJobResponse->Status;

    # Returns a L<Paws::Robomaker::SyncDeploymentJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/SyncDeploymentJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> Fleet => Str

The target fleet for the synchronization.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SyncDeploymentJob in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

