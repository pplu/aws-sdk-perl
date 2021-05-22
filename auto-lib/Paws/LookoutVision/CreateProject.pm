
package Paws::LookoutVision::CreateProject;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has ProjectName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-11-20/projects');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutVision::CreateProjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::CreateProject - Arguments for method CreateProject on L<Paws::LookoutVision>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the
L<Amazon Lookout for Vision|Paws::LookoutVision> service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

=head1 SYNOPSIS

    my $lookoutvision = Paws->service('LookoutVision');
    my $CreateProjectResponse = $lookoutvision->CreateProject(
      ProjectName => 'MyProjectName',
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $ProjectMetadata = $CreateProjectResponse->ProjectMetadata;

    # Returns a L<Paws::LookoutVision::CreateProjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutvision/CreateProject>

=head1 ATTRIBUTES


=head2 ClientToken => Str

ClientToken is an idempotency token that ensures a call to
C<CreateProject> completes only once. You choose the value to pass. For
example, An issue, such as an network outage, might prevent you from
getting a response from C<CreateProject>. In this case, safely retry
your call to C<CreateProject> by using the same C<ClientToken>
parameter value. An error occurs if the other input parameters are not
the same as in the first request. Using a different value for
C<ClientToken> is considered a new call to C<CreateProject>. An
idempotency token is active for 8 hours.



=head2 B<REQUIRED> ProjectName => Str

The name for the project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::LookoutVision>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

