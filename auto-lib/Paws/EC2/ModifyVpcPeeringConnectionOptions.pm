
package Paws::EC2::ModifyVpcPeeringConnectionOptions;
  use Moose;
  has AccepterPeeringConnectionOptions => (is => 'ro', isa => 'Paws::EC2::PeeringConnectionOptionsRequest');
  has DryRun => (is => 'ro', isa => 'Bool');
  has RequesterPeeringConnectionOptions => (is => 'ro', isa => 'Paws::EC2::PeeringConnectionOptionsRequest');
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVpcPeeringConnectionOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyVpcPeeringConnectionOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpcPeeringConnectionOptions - Arguments for method ModifyVpcPeeringConnectionOptions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVpcPeeringConnectionOptions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVpcPeeringConnectionOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVpcPeeringConnectionOptions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyVpcPeeringConnectionOptionsResult =
      $ec2->ModifyVpcPeeringConnectionOptions(
      VpcPeeringConnectionId           => 'MyString',
      AccepterPeeringConnectionOptions => {
        AllowDnsResolutionFromRemoteVpc            => 1,    # OPTIONAL
        AllowEgressFromLocalClassicLinkToRemoteVpc => 1,    # OPTIONAL
        AllowEgressFromLocalVpcToRemoteClassicLink => 1,    # OPTIONAL
      },    # OPTIONAL
      DryRun                            => 1,    # OPTIONAL
      RequesterPeeringConnectionOptions => {
        AllowDnsResolutionFromRemoteVpc            => 1,    # OPTIONAL
        AllowEgressFromLocalClassicLinkToRemoteVpc => 1,    # OPTIONAL
        AllowEgressFromLocalVpcToRemoteClassicLink => 1,    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $AccepterPeeringConnectionOptions =
      $ModifyVpcPeeringConnectionOptionsResult
      ->AccepterPeeringConnectionOptions;
    my $RequesterPeeringConnectionOptions =
      $ModifyVpcPeeringConnectionOptionsResult
      ->RequesterPeeringConnectionOptions;

    # Returns a L<Paws::EC2::ModifyVpcPeeringConnectionOptionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVpcPeeringConnectionOptions>

=head1 ATTRIBUTES


=head2 AccepterPeeringConnectionOptions => L<Paws::EC2::PeeringConnectionOptionsRequest>

The VPC peering connection options for the accepter VPC.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 RequesterPeeringConnectionOptions => L<Paws::EC2::PeeringConnectionOptionsRequest>

The VPC peering connection options for the requester VPC.



=head2 B<REQUIRED> VpcPeeringConnectionId => Str

The ID of the VPC peering connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVpcPeeringConnectionOptions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

