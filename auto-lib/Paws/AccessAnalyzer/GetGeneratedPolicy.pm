
package Paws::AccessAnalyzer::GetGeneratedPolicy;
  use Moose;
  has IncludeResourcePlaceholders => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeResourcePlaceholders');
  has IncludeServiceLevelTemplate => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeServiceLevelTemplate');
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGeneratedPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policy/generation/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::GetGeneratedPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GetGeneratedPolicy - Arguments for method GetGeneratedPolicy on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGeneratedPolicy on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method GetGeneratedPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGeneratedPolicy.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $GetGeneratedPolicyResponse = $access -analyzer->GetGeneratedPolicy(
      JobId                       => 'MyJobId',
      IncludeResourcePlaceholders => 1,           # OPTIONAL
      IncludeServiceLevelTemplate => 1,           # OPTIONAL
    );

    # Results:
    my $GeneratedPolicyResult =
      $GetGeneratedPolicyResponse->GeneratedPolicyResult;
    my $JobDetails = $GetGeneratedPolicyResponse->JobDetails;

    # Returns a L<Paws::AccessAnalyzer::GetGeneratedPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/GetGeneratedPolicy>

=head1 ATTRIBUTES


=head2 IncludeResourcePlaceholders => Bool

The level of detail that you want to generate. You can specify whether
to generate policies with placeholders for resource ARNs for actions
that support resource level granularity in policies.

For example, in the resource section of a policy, you can receive a
placeholder such as C<"Resource":"arn:aws:s3:::${BucketName}"> instead
of C<"*">.



=head2 IncludeServiceLevelTemplate => Bool

The level of detail that you want to generate. You can specify whether
to generate service-level policies.

Access Analyzer uses C<iam:servicelastaccessed> to identify services
that have been used recently to create this service-level template.



=head2 B<REQUIRED> JobId => Str

The C<JobId> that is returned by the C<StartPolicyGeneration>
operation. The C<JobId> can be used with C<GetGeneratedPolicy> to
retrieve the generated policies or used with C<CancelPolicyGeneration>
to cancel the policy generation request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGeneratedPolicy in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

