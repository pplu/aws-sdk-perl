
package Paws::CodeGuruProfiler::PutPermission;
  use Moose;
  has ActionGroup => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'actionGroup', required => 1);
  has Principals => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'principals', required => 1);
  has ProfilingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profilingGroupName', required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutPermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profilingGroups/{profilingGroupName}/policy/{actionGroup}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruProfiler::PutPermissionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::PutPermission - Arguments for method PutPermission on L<Paws::CodeGuruProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPermission on the
L<Amazon CodeGuru Profiler|Paws::CodeGuruProfiler> service. Use the attributes of this class
as arguments to method PutPermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPermission.

=head1 SYNOPSIS

    my $codeguru-profiler = Paws->service('CodeGuruProfiler');
    my $PutPermissionResponse = $codeguru -profiler->PutPermission(
      ActionGroup        => 'agentPermissions',
      Principals         => [ 'MyPrincipal', ... ],
      ProfilingGroupName => 'MyProfilingGroupName',
      RevisionId         => 'MyRevisionId',           # OPTIONAL
    );

    # Results:
    my $Policy     = $PutPermissionResponse->Policy;
    my $RevisionId = $PutPermissionResponse->RevisionId;

    # Returns a L<Paws::CodeGuruProfiler::PutPermissionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler/PutPermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionGroup => Str

Specifies an action group that contains permissions to add to a
profiling group resource. One action group is supported,
C<agentPermissions>, which grants permission to perform actions
required by the profiling agent, C<ConfigureAgent> and
C<PostAgentProfile> permissions.

Valid values are: C<"agentPermissions">

=head2 B<REQUIRED> Principals => ArrayRef[Str|Undef]

A list ARNs for the roles and users you want to grant access to the
profiling group. Wildcards are not are supported in the ARNs.



=head2 B<REQUIRED> ProfilingGroupName => Str

The name of the profiling group to grant access to.



=head2 RevisionId => Str

A universally unique identifier (UUID) for the revision of the policy
you are adding to the profiling group. Do not specify this when you add
permissions to a profiling group for the first time. If a policy
already exists on the profiling group, you must specify the
C<revisionId>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPermission in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

