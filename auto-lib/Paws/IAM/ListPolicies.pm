
package Paws::IAM::ListPolicies;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has OnlyAttached => (is => 'ro', isa => 'Bool');
  has PathPrefix => (is => 'ro', isa => 'Str');
  has PolicyUsageFilter => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::ListPoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListPoliciesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListPolicies - Arguments for method ListPolicies on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPolicies on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method ListPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPolicies.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $ListPoliciesResponse = $iam->ListPolicies(
      Marker            => 'MymarkerType',         # OPTIONAL
      MaxItems          => 1,                      # OPTIONAL
      OnlyAttached      => 1,                      # OPTIONAL
      PathPrefix        => 'MypolicyPathType',     # OPTIONAL
      PolicyUsageFilter => 'PermissionsPolicy',    # OPTIONAL
      Scope             => 'All',                  # OPTIONAL
    );

    # Results:
    my $IsTruncated = $ListPoliciesResponse->IsTruncated;
    my $Marker      = $ListPoliciesResponse->Marker;
    my $Policies    = $ListPoliciesResponse->Policies;

    # Returns a L<Paws::IAM::ListPoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/ListPolicies>

=head1 ATTRIBUTES


=head2 Marker => Str

Use this parameter only when paginating results and only after you
receive a response indicating that the results are truncated. Set it to
the value of the C<Marker> element in the response that you received to
indicate where the next call should start.



=head2 MaxItems => Int

Use this only when paginating results to indicate the maximum number of
items you want in the response. If additional items exist beyond the
maximum you specify, the C<IsTruncated> response element is C<true>.

If you do not include this parameter, the number of items defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the C<IsTruncated> response element
returns C<true>, and C<Marker> contains a value to include in the
subsequent call that tells the service where to continue from.



=head2 OnlyAttached => Bool

A flag to filter the results to only the attached policies.

When C<OnlyAttached> is C<true>, the returned list contains only the
policies that are attached to an IAM user, group, or role. When
C<OnlyAttached> is C<false>, or when the parameter is not included, all
policies are returned.



=head2 PathPrefix => Str

The path prefix for filtering the results. This parameter is optional.
If it is not included, it defaults to a slash (/), listing all
policies. This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
either a forward slash (/) by itself or a string that must begin and
end with forward slashes. In addition, it can contain any ASCII
character from the ! (\u0021) through the DEL character (\u007F),
including most punctuation characters, digits, and upper and lowercased
letters.



=head2 PolicyUsageFilter => Str

The policy usage method to use for filtering the results.

To list only permissions policies, set C<PolicyUsageFilter> to
C<PermissionsPolicy>. To list only the policies used to set permissions
boundaries, set the value to C<PermissionsBoundary>.

This parameter is optional. If it is not included, all policies are
returned.

Valid values are: C<"PermissionsPolicy">, C<"PermissionsBoundary">

=head2 Scope => Str

The scope to use for filtering the results.

To list only AWS managed policies, set C<Scope> to C<AWS>. To list only
the customer managed policies in your AWS account, set C<Scope> to
C<Local>.

This parameter is optional. If it is not included, or if it is set to
C<All>, all policies are returned.

Valid values are: C<"All">, C<"AWS">, C<"Local">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPolicies in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

