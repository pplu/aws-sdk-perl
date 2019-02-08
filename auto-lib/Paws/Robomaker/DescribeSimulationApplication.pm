
package Paws::Robomaker::DescribeSimulationApplication;
  use Moose;
  has Application => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'application', required => 1);
  has ApplicationVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSimulationApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeSimulationApplication');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::DescribeSimulationApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeSimulationApplication - Arguments for method DescribeSimulationApplication on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSimulationApplication on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method DescribeSimulationApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSimulationApplication.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $DescribeSimulationApplicationResponse =
      $robomaker->DescribeSimulationApplication(
      Application        => 'MyArn',
      ApplicationVersion => 'MyVersion',    # OPTIONAL
      );

    # Results:
    my $Arn           = $DescribeSimulationApplicationResponse->Arn;
    my $LastUpdatedAt = $DescribeSimulationApplicationResponse->LastUpdatedAt;
    my $Name          = $DescribeSimulationApplicationResponse->Name;
    my $RenderingEngine =
      $DescribeSimulationApplicationResponse->RenderingEngine;
    my $RevisionId = $DescribeSimulationApplicationResponse->RevisionId;
    my $RobotSoftwareSuite =
      $DescribeSimulationApplicationResponse->RobotSoftwareSuite;
    my $SimulationSoftwareSuite =
      $DescribeSimulationApplicationResponse->SimulationSoftwareSuite;
    my $Sources = $DescribeSimulationApplicationResponse->Sources;
    my $Tags    = $DescribeSimulationApplicationResponse->Tags;
    my $Version = $DescribeSimulationApplicationResponse->Version;

   # Returns a L<Paws::Robomaker::DescribeSimulationApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/DescribeSimulationApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

The application information for the simulation application.



=head2 ApplicationVersion => Str

The version of the simulation application to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSimulationApplication in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

