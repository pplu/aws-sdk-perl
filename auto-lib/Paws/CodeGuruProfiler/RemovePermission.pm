
package Paws::CodeGuruProfiler::RemovePermission;
  use Moose;
  has ActionGroup => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'actionGroup', required => 1);
  has ProfilingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profilingGroupName', required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'revisionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemovePermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profilingGroups/{profilingGroupName}/policy/{actionGroup}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruProfiler::RemovePermissionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::RemovePermission - Arguments for method RemovePermission on L<Paws::CodeGuruProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemovePermission on the
L<Amazon CodeGuru Profiler|Paws::CodeGuruProfiler> service. Use the attributes of this class
as arguments to method RemovePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemovePermission.

=head1 SYNOPSIS

    my $codeguru-profiler = Paws->service('CodeGuruProfiler');
    my $RemovePermissionResponse = $codeguru -profiler->RemovePermission(
      ActionGroup        => 'agentPermissions',
      ProfilingGroupName => 'MyProfilingGroupName',
      RevisionId         => 'MyRevisionId',

    );

    # Results:
    my $Policy     = $RemovePermissionResponse->Policy;
    my $RevisionId = $RemovePermissionResponse->RevisionId;

    # Returns a L<Paws::CodeGuruProfiler::RemovePermissionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler/RemovePermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionGroup => Str

Specifies an action group that contains the permissions to remove from
a profiling group's resource-based policy. One action group is
supported, C<agentPermissions>, which grants C<ConfigureAgent> and
C<PostAgentProfile> permissions.

Valid values are: C<"agentPermissions">

=head2 B<REQUIRED> ProfilingGroupName => Str

The name of the profiling group.



=head2 B<REQUIRED> RevisionId => Str

A universally unique identifier (UUID) for the revision of the
resource-based policy from which you want to remove permissions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemovePermission in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

