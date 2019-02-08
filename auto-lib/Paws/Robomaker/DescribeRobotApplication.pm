
package Paws::Robomaker::DescribeRobotApplication;
  use Moose;
  has Application => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'application', required => 1);
  has ApplicationVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRobotApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeRobotApplication');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::DescribeRobotApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeRobotApplication - Arguments for method DescribeRobotApplication on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRobotApplication on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method DescribeRobotApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRobotApplication.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $DescribeRobotApplicationResponse = $robomaker->DescribeRobotApplication(
      Application        => 'MyArn',
      ApplicationVersion => 'MyVersion',    # OPTIONAL
    );

    # Results:
    my $Arn           = $DescribeRobotApplicationResponse->Arn;
    my $LastUpdatedAt = $DescribeRobotApplicationResponse->LastUpdatedAt;
    my $Name          = $DescribeRobotApplicationResponse->Name;
    my $RevisionId    = $DescribeRobotApplicationResponse->RevisionId;
    my $RobotSoftwareSuite =
      $DescribeRobotApplicationResponse->RobotSoftwareSuite;
    my $Sources = $DescribeRobotApplicationResponse->Sources;
    my $Tags    = $DescribeRobotApplicationResponse->Tags;
    my $Version = $DescribeRobotApplicationResponse->Version;

    # Returns a L<Paws::Robomaker::DescribeRobotApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/DescribeRobotApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

The Amazon Resource Name (ARN) of the robot application.



=head2 ApplicationVersion => Str

The version of the robot application to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRobotApplication in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

