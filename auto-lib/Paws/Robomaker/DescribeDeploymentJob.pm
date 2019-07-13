
package Paws::Robomaker::DescribeDeploymentJob;
  use Moose;
  has Job => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'job', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDeploymentJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeDeploymentJob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::DescribeDeploymentJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeDeploymentJob - Arguments for method DescribeDeploymentJob on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDeploymentJob on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method DescribeDeploymentJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDeploymentJob.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $DescribeDeploymentJobResponse = $robomaker->DescribeDeploymentJob(
      Job => 'MyArn',

    );

    # Results:
    my $Arn       = $DescribeDeploymentJobResponse->Arn;
    my $CreatedAt = $DescribeDeploymentJobResponse->CreatedAt;
    my $DeploymentApplicationConfigs =
      $DescribeDeploymentJobResponse->DeploymentApplicationConfigs;
    my $DeploymentConfig = $DescribeDeploymentJobResponse->DeploymentConfig;
    my $FailureCode      = $DescribeDeploymentJobResponse->FailureCode;
    my $FailureReason    = $DescribeDeploymentJobResponse->FailureReason;
    my $Fleet            = $DescribeDeploymentJobResponse->Fleet;
    my $RobotDeploymentSummary =
      $DescribeDeploymentJobResponse->RobotDeploymentSummary;
    my $Status = $DescribeDeploymentJobResponse->Status;
    my $Tags   = $DescribeDeploymentJobResponse->Tags;

    # Returns a L<Paws::Robomaker::DescribeDeploymentJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/DescribeDeploymentJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Job => Str

The Amazon Resource Name (ARN) of the deployment job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDeploymentJob in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

