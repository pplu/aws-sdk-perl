
package Paws::ApiGatewayV2::GetVpcLinkResponse;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds');
  has Tags => (is => 'ro', isa => 'Paws::ApiGatewayV2::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has VpcLinkId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcLinkId');
  has VpcLinkStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcLinkStatus');
  has VpcLinkStatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcLinkStatusMessage');
  has VpcLinkVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcLinkVersion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetVpcLinkResponse

=head1 ATTRIBUTES


=head2 CreatedDate => Str

The timestamp when the VPC link was created.


=head2 Name => Str

The name of the VPC link.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of security group IDs for the VPC link.


=head2 SubnetIds => ArrayRef[Str|Undef]

A list of subnet IDs to include in the VPC link.


=head2 Tags => L<Paws::ApiGatewayV2::Tags>

Tags for the VPC link.


=head2 VpcLinkId => Str

The ID of the VPC link.


=head2 VpcLinkStatus => Str

The status of the VPC link.

Valid values are: C<"PENDING">, C<"AVAILABLE">, C<"DELETING">, C<"FAILED">, C<"INACTIVE">
=head2 VpcLinkStatusMessage => Str

A message summarizing the cause of the status of the VPC link.


=head2 VpcLinkVersion => Str

The version of the VPC link.

Valid values are: C<"V2">
=head2 _request_id => Str


=cut

