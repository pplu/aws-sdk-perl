
package Paws::IAM::SimulateCustomPolicy;
  use Moose;
  has ActionNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has CallerArn => (is => 'ro', isa => 'Str');
  has ContextEntries => (is => 'ro', isa => 'ArrayRef[Paws::IAM::ContextEntry]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PolicyInputList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ResourceHandlingOption => (is => 'ro', isa => 'Str');
  has ResourceOwner => (is => 'ro', isa => 'Str');
  has ResourcePolicy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SimulateCustomPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::SimulatePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SimulateCustomPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::SimulateCustomPolicy - Arguments for method SimulateCustomPolicy on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SimulateCustomPolicy on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method SimulateCustomPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SimulateCustomPolicy.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $SimulatePolicyResponse = $iam->SimulateCustomPolicy(
      ActionNames => [
        'MyActionNameType', ...    # min: 3, max: 128
      ],
      PolicyInputList => [
        'MypolicyDocumentType', ...    # min: 1, max: 131072
      ],
      CallerArn      => 'MyResourceNameType',    # OPTIONAL
      ContextEntries => [
        {
          ContextKeyName => 'MyContextKeyNameType', # min: 5, max: 256; OPTIONAL
          ContextKeyType => 'string'
          , # values: string, stringList, numeric, numericList, boolean, booleanList, ip, ipList, binary, binaryList, date, dateList; OPTIONAL
          ContextKeyValues => [ 'MyContextKeyValueType', ... ],    # OPTIONAL
        },
        ...
      ],                                                           # OPTIONAL
      Marker       => 'MymarkerType',                              # OPTIONAL
      MaxItems     => 1,                                           # OPTIONAL
      ResourceArns => [
        'MyResourceNameType', ...    # min: 1, max: 2048
      ],                             # OPTIONAL
      ResourceHandlingOption => 'MyResourceHandlingOptionType',    # OPTIONAL
      ResourceOwner          => 'MyResourceNameType',              # OPTIONAL
      ResourcePolicy         => 'MypolicyDocumentType',            # OPTIONAL
    );

    # Results:
    my $EvaluationResults = $SimulatePolicyResponse->EvaluationResults;
    my $IsTruncated       = $SimulatePolicyResponse->IsTruncated;
    my $Marker            = $SimulatePolicyResponse->Marker;

    # Returns a L<Paws::IAM::SimulatePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/SimulateCustomPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionNames => ArrayRef[Str|Undef]

A list of names of API operations to evaluate in the simulation. Each
operation is evaluated against each resource. Each operation must
include the service identifier, such as C<iam:CreateUser>.



=head2 CallerArn => Str

The ARN of the IAM user that you want to use as the simulated caller of
the API operations. C<CallerArn> is required if you include a
C<ResourcePolicy> so that the policy's C<Principal> element has a value
to use in evaluating the policy.

You can specify only the ARN of an IAM user. You cannot specify the ARN
of an assumed role, federated user, or a service principal.



=head2 ContextEntries => ArrayRef[L<Paws::IAM::ContextEntry>]

A list of context keys and corresponding values for the simulation to
use. Whenever a context key is evaluated in one of the simulated IAM
permission policies, the corresponding value is supplied.



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



=head2 B<REQUIRED> PolicyInputList => ArrayRef[Str|Undef]

A list of policy documents to include in the simulation. Each document
is specified as a string containing the complete, valid JSON text of an
IAM policy. Do not include any resource-based policies in this
parameter. Any resource-based policy must be submitted with the
C<ResourcePolicy> parameter. The policies cannot be "scope-down"
policies, such as you could include in a call to GetFederationToken
(http://docs.aws.amazon.com/IAM/latest/APIReference/API_GetFederationToken.html)
or one of the AssumeRole
(http://docs.aws.amazon.com/IAM/latest/APIReference/API_AssumeRole.html)
API operations. In other words, do not use policies designed to
restrict what a user can do while using the temporary credentials.

The regex pattern (http://wikipedia.org/wiki/regex) used to validate
this parameter is a string of characters consisting of the following:

=over

=item *

Any printable ASCII character ranging from the space character (\u0020)
through the end of the ASCII character range

=item *

The printable characters in the Basic Latin and Latin-1 Supplement
character set (through \u00FF)

=item *

The special characters tab (\u0009), line feed (\u000A), and carriage
return (\u000D)

=back




=head2 ResourceArns => ArrayRef[Str|Undef]

A list of ARNs of AWS resources to include in the simulation. If this
parameter is not provided, then the value defaults to C<*> (all
resources). Each API in the C<ActionNames> parameter is evaluated for
each resource in this list. The simulation determines the access result
(allowed or denied) of each combination and reports it in the response.

The simulation does not automatically retrieve policies for the
specified resources. If you want to include a resource policy in the
simulation, then you must include the policy as a string in the
C<ResourcePolicy> parameter.

If you include a C<ResourcePolicy>, then it must be applicable to all
of the resources included in the simulation or you receive an invalid
input error.

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.



=head2 ResourceHandlingOption => Str

Specifies the type of simulation to run. Different API operations that
support resource-based policies require different combinations of
resources. By specifying the type of simulation to run, you enable the
policy simulator to enforce the presence of the required resources to
ensure reliable simulation results. If your simulation does not match
one of the following scenarios, then you can omit this parameter. The
following list shows each of the supported scenario values and the
resources that you must define to run the simulation.

Each of the EC2 scenarios requires that you specify instance, image,
and security-group resources. If your scenario includes an EBS volume,
then you must specify that volume as a resource. If the EC2 scenario
includes VPC, then you must supply the network-interface resource. If
it includes an IP subnet, then you must specify the subnet resource.
For more information on the EC2 scenario options, see Supported
Platforms
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html)
in the I<Amazon EC2 User Guide>.

=over

=item *

B<EC2-Classic-InstanceStore>

instance, image, security-group

=item *

B<EC2-Classic-EBS>

instance, image, security-group, volume

=item *

B<EC2-VPC-InstanceStore>

instance, image, security-group, network-interface

=item *

B<EC2-VPC-InstanceStore-Subnet>

instance, image, security-group, network-interface, subnet

=item *

B<EC2-VPC-EBS>

instance, image, security-group, network-interface, volume

=item *

B<EC2-VPC-EBS-Subnet>

instance, image, security-group, network-interface, subnet, volume

=back




=head2 ResourceOwner => Str

An ARN representing the AWS account ID that specifies the owner of any
simulated resource that does not identify its owner in the resource
ARN, such as an S3 bucket or object. If C<ResourceOwner> is specified,
it is also used as the account owner of any C<ResourcePolicy> included
in the simulation. If the C<ResourceOwner> parameter is not specified,
then the owner of the resources and the resource policy defaults to the
account of the identity provided in C<CallerArn>. This parameter is
required only if you specify a resource-based policy and account that
owns the resource is different from the account that owns the simulated
calling user C<CallerArn>.

The ARN for an account uses the following syntax:
C<arn:aws:iam::I<AWS-account-ID>:root>. For example, to represent the
account with the 112233445566 ID, use the following ARN:
C<arn:aws:iam::112233445566-ID:root>.



=head2 ResourcePolicy => Str

A resource-based policy to include in the simulation provided as a
string. Each resource in the simulation is treated as if it had this
policy attached. You can include only one resource-based policy in a
simulation.

The regex pattern (http://wikipedia.org/wiki/regex) used to validate
this parameter is a string of characters consisting of the following:

=over

=item *

Any printable ASCII character ranging from the space character (\u0020)
through the end of the ASCII character range

=item *

The printable characters in the Basic Latin and Latin-1 Supplement
character set (through \u00FF)

=item *

The special characters tab (\u0009), line feed (\u000A), and carriage
return (\u000D)

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SimulateCustomPolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

