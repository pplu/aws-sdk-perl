
package Paws::FMS::GetViolationDetails;
  use Moose;
  has MemberAccount => (is => 'ro', isa => 'Str', required => 1);
  has PolicyId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetViolationDetails');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::GetViolationDetailsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetViolationDetails - Arguments for method GetViolationDetails on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetViolationDetails on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method GetViolationDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetViolationDetails.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $GetViolationDetailsResponse = $fms->GetViolationDetails(
      MemberAccount => 'MyAWSAccountId',
      PolicyId      => 'MyPolicyId',
      ResourceId    => 'MyResourceId',
      ResourceType  => 'MyResourceType',

    );

    # Results:
    my $ViolationDetail = $GetViolationDetailsResponse->ViolationDetail;

    # Returns a L<Paws::FMS::GetViolationDetailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/GetViolationDetails>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MemberAccount => Str

The AWS account ID that you want the details for.



=head2 B<REQUIRED> PolicyId => Str

The ID of the AWS Firewall Manager policy that you want the details
for. This currently only supports security group content audit
policies.



=head2 B<REQUIRED> ResourceId => Str

The ID of the resource that has violations.



=head2 B<REQUIRED> ResourceType => Str

The resource type. This is in the format shown in the AWS Resource
Types Reference
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).
Supported resource types are: C<AWS::EC2::Instance>,
C<AWS::EC2::NetworkInterface>, C<AWS::EC2::SecurityGroup>,
C<AWS::NetworkFirewall::FirewallPolicy>, and C<AWS::EC2::Subnet>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetViolationDetails in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

