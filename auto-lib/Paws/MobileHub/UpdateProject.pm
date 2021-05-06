
package Paws::MobileHub::UpdateProject;
  use Moose;
  has Contents => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contents');
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'projectId', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Contents');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MobileHub::UpdateProjectResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::UpdateProject - Arguments for method UpdateProject on L<Paws::MobileHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProject on the
L<AWS Mobile|Paws::MobileHub> service. Use the attributes of this class
as arguments to method UpdateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProject.

=head1 SYNOPSIS

    my $mobile = Paws->service('MobileHub');
    my $UpdateProjectResult = $mobile->UpdateProject(
      ProjectId => 'MyProjectId',
      Contents  => 'BlobContents',    # OPTIONAL
    );

    # Results:
    my $Details = $UpdateProjectResult->Details;

    # Returns a L<Paws::MobileHub::UpdateProjectResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mobile/UpdateProject>

=head1 ATTRIBUTES


=head2 Contents => Str

ZIP or YAML file which contains project configuration to be updated.
This should be the contents of the file downloaded from the URL
provided in an export project operation.



=head2 B<REQUIRED> ProjectId => Str

Unique project identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProject in L<Paws::MobileHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

