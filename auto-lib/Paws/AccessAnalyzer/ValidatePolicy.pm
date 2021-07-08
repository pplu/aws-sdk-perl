
package Paws::AccessAnalyzer::ValidatePolicy;
  use Moose;
  has Locale => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'locale');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PolicyDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyDocument', required => 1);
  has PolicyType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidatePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policy/validation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::ValidatePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ValidatePolicy - Arguments for method ValidatePolicy on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ValidatePolicy on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method ValidatePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ValidatePolicy.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $ValidatePolicyResponse = $access -analyzer->ValidatePolicy(
      PolicyDocument => 'MyPolicyDocument',
      PolicyType     => 'IDENTITY_POLICY',
      Locale         => 'DE',                 # OPTIONAL
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyToken',            # OPTIONAL
    );

    # Results:
    my $Findings  = $ValidatePolicyResponse->Findings;
    my $NextToken = $ValidatePolicyResponse->NextToken;

    # Returns a L<Paws::AccessAnalyzer::ValidatePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/ValidatePolicy>

=head1 ATTRIBUTES


=head2 Locale => Str

The locale to use for localizing the findings.

Valid values are: C<"DE">, C<"EN">, C<"ES">, C<"FR">, C<"IT">, C<"JA">, C<"KO">, C<"PT_BR">, C<"ZH_CN">, C<"ZH_TW">

=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

A token used for pagination of results returned.



=head2 B<REQUIRED> PolicyDocument => Str

The JSON policy document to use as the content for the policy.



=head2 B<REQUIRED> PolicyType => Str

The type of policy to validate. Identity policies grant permissions to
IAM principals. Identity policies include managed and inline policies
for IAM roles, users, and groups. They also include service-control
policies (SCPs) that are attached to an AWS organization,
organizational unit (OU), or an account.

Resource policies grant permissions on AWS resources. Resource policies
include trust policies for IAM roles and bucket policies for S3
buckets. You can provide a generic input such as identity policy or
resource policy or a specific input such as managed policy or S3 bucket
policy.

Valid values are: C<"IDENTITY_POLICY">, C<"RESOURCE_POLICY">, C<"SERVICE_CONTROL_POLICY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ValidatePolicy in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

