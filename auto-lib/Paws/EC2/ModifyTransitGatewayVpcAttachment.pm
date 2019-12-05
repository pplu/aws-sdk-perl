
package Paws::EC2::ModifyTransitGatewayVpcAttachment;
  use Moose;
  has AddSubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Options => (is => 'ro', isa => 'Paws::EC2::ModifyTransitGatewayVpcAttachmentRequestOptions');
  has RemoveSubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TransitGatewayAttachmentId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyTransitGatewayVpcAttachment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyTransitGatewayVpcAttachmentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyTransitGatewayVpcAttachment - Arguments for method ModifyTransitGatewayVpcAttachment on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyTransitGatewayVpcAttachment on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyTransitGatewayVpcAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyTransitGatewayVpcAttachment.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyTransitGatewayVpcAttachmentResult =
      $ec2->ModifyTransitGatewayVpcAttachment(
      TransitGatewayAttachmentId => 'MyString',
      AddSubnetIds               => [ 'MyString', ... ],    # OPTIONAL
      DryRun                     => 1,                      # OPTIONAL
      Options                    => {
        DnsSupport  => 'enable',    # values: enable, disable; OPTIONAL
        Ipv6Support => 'enable',    # values: enable, disable; OPTIONAL
      },    # OPTIONAL
      RemoveSubnetIds => [ 'MyString', ... ],    # OPTIONAL
      );

    # Results:
    my $TransitGatewayVpcAttachment =
      $ModifyTransitGatewayVpcAttachmentResult->TransitGatewayVpcAttachment;

    # Returns a L<Paws::EC2::ModifyTransitGatewayVpcAttachmentResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyTransitGatewayVpcAttachment>

=head1 ATTRIBUTES


=head2 AddSubnetIds => ArrayRef[Str|Undef]

The IDs of one or more subnets to add. You can specify at most one
subnet per Availability Zone.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Options => L<Paws::EC2::ModifyTransitGatewayVpcAttachmentRequestOptions>

The new VPC attachment options.



=head2 RemoveSubnetIds => ArrayRef[Str|Undef]

The IDs of one or more subnets to remove.



=head2 B<REQUIRED> TransitGatewayAttachmentId => Str

The ID of the attachment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyTransitGatewayVpcAttachment in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

