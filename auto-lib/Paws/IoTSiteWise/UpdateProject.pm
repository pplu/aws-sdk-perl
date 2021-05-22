
package Paws::IoTSiteWise::UpdateProject;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ProjectDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectDescription');
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectId', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{projectId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::UpdateProjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::UpdateProject - Arguments for method UpdateProject on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProject on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method UpdateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProject.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $UpdateProjectResponse = $iotsitewise->UpdateProject(
      ProjectId          => 'MyID',
      ProjectName        => 'MyName',
      ClientToken        => 'MyClientToken',    # OPTIONAL
      ProjectDescription => 'MyDescription',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/UpdateProject>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 ProjectDescription => Str

A new description for the project.



=head2 B<REQUIRED> ProjectId => Str

The ID of the project to update.



=head2 B<REQUIRED> ProjectName => Str

A new friendly name for the project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProject in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

