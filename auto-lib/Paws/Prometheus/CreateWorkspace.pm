
package Paws::Prometheus::CreateWorkspace;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alias');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkspace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Prometheus::CreateWorkspaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::CreateWorkspace - Arguments for method CreateWorkspace on L<Paws::Prometheus>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkspace on the
L<Amazon Prometheus Service|Paws::Prometheus> service. Use the attributes of this class
as arguments to method CreateWorkspace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkspace.

=head1 SYNOPSIS

    my $aps = Paws->service('Prometheus');
    my $CreateWorkspaceResponse = $aps->CreateWorkspace(
      Alias       => 'MyWorkspaceAlias',      # OPTIONAL
      ClientToken => 'MyIdempotencyToken',    # OPTIONAL
    );

    # Results:
    my $Arn         = $CreateWorkspaceResponse->Arn;
    my $Status      = $CreateWorkspaceResponse->Status;
    my $WorkspaceId = $CreateWorkspaceResponse->WorkspaceId;

    # Returns a L<Paws::Prometheus::CreateWorkspaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aps/CreateWorkspace>

=head1 ATTRIBUTES


=head2 Alias => Str

An optional user-assigned alias for this workspace. This alias is for
user reference and does not need to be unique.



=head2 ClientToken => Str

Optional, unique, case-sensitive, user-provided identifier to ensure
the idempotency of the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkspace in L<Paws::Prometheus>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

