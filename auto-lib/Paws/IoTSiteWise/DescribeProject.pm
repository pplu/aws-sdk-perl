
package Paws::IoTSiteWise::DescribeProject;
  use Moose;
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{projectId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DescribeProjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeProject - Arguments for method DescribeProject on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProject on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DescribeProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProject.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DescribeProjectResponse = $iotsitewise->DescribeProject(
      ProjectId => 'MyID',

    );

    # Results:
    my $PortalId              = $DescribeProjectResponse->PortalId;
    my $ProjectArn            = $DescribeProjectResponse->ProjectArn;
    my $ProjectCreationDate   = $DescribeProjectResponse->ProjectCreationDate;
    my $ProjectDescription    = $DescribeProjectResponse->ProjectDescription;
    my $ProjectId             = $DescribeProjectResponse->ProjectId;
    my $ProjectLastUpdateDate = $DescribeProjectResponse->ProjectLastUpdateDate;
    my $ProjectName           = $DescribeProjectResponse->ProjectName;

    # Returns a L<Paws::IoTSiteWise::DescribeProjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DescribeProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectId => Str

The ID of the project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProject in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

