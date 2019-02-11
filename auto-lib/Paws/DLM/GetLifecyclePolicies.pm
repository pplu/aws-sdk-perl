
package Paws::DLM::GetLifecyclePolicies;
  use Moose;
  has PolicyIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'policyIds');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'resourceTypes');
  has State => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'state');
  has TagsToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'tagsToAdd');
  has TargetTags => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'targetTags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLifecyclePolicies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DLM::GetLifecyclePoliciesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::GetLifecyclePolicies - Arguments for method GetLifecyclePolicies on L<Paws::DLM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLifecyclePolicies on the
L<Amazon Data Lifecycle Manager|Paws::DLM> service. Use the attributes of this class
as arguments to method GetLifecyclePolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLifecyclePolicies.

=head1 SYNOPSIS

    my $dlm = Paws->service('DLM');
    my $GetLifecyclePoliciesResponse = $dlm->GetLifecyclePolicies(
      PolicyIds     => [ 'MyPolicyId', ... ],    # OPTIONAL
      ResourceTypes => [
        'VOLUME', ...                            # values: VOLUME
      ],                                         # OPTIONAL
      State      => 'ENABLED',                   # OPTIONAL
      TagsToAdd  => [ 'MyTagFilter', ... ],      # OPTIONAL
      TargetTags => [ 'MyTagFilter', ... ],      # OPTIONAL
    );

    # Results:
    my $Policies = $GetLifecyclePoliciesResponse->Policies;

    # Returns a L<Paws::DLM::GetLifecyclePoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dlm/GetLifecyclePolicies>

=head1 ATTRIBUTES


=head2 PolicyIds => ArrayRef[Str|Undef]

The identifiers of the data lifecycle policies.



=head2 ResourceTypes => ArrayRef[Str|Undef]

The resource type.



=head2 State => Str

The activation state.

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"ERROR">

=head2 TagsToAdd => ArrayRef[Str|Undef]

The tags to add to objects created by the policy.

Tags are strings in the format C<key=value>.

These user-defined tags are added in addition to the AWS-added
lifecycle tags.



=head2 TargetTags => ArrayRef[Str|Undef]

The target tag for a policy.

Tags are strings in the format C<key=value>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLifecyclePolicies in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

