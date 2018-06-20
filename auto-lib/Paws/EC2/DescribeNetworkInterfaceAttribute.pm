
package Paws::EC2::DescribeNetworkInterfaceAttribute;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attribute' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkInterfaceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInterfaceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeNetworkInterfaceAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkInterfaceAttribute - Arguments for method DescribeNetworkInterfaceAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNetworkInterfaceAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeNetworkInterfaceAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNetworkInterfaceAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe the attachment attribute of a network interface
    # This example describes the attachment attribute of the specified network
    # interface.
    my $DescribeNetworkInterfaceAttributeResult =
      $ec2->DescribeNetworkInterfaceAttribute(
      {
        'Attribute'          => 'attachment',
        'NetworkInterfaceId' => 'eni-686ea200'
      }
      );

    # Results:
    my $Attachment = $DescribeNetworkInterfaceAttributeResult->Attachment;
    my $NetworkInterfaceId =
      $DescribeNetworkInterfaceAttributeResult->NetworkInterfaceId;

    # Returns a L<Paws::EC2::DescribeNetworkInterfaceAttributeResult> object.
    # To describe the description attribute of a network interface
    # This example describes the description attribute of the specified network
    # interface.
    my $DescribeNetworkInterfaceAttributeResult =
      $ec2->DescribeNetworkInterfaceAttribute(
      {
        'Attribute'          => 'description',
        'NetworkInterfaceId' => 'eni-686ea200'
      }
      );

    # Results:
    my $Description = $DescribeNetworkInterfaceAttributeResult->Description;
    my $NetworkInterfaceId =
      $DescribeNetworkInterfaceAttributeResult->NetworkInterfaceId;

    # Returns a L<Paws::EC2::DescribeNetworkInterfaceAttributeResult> object.
    # To describe the groupSet attribute of a network interface
    # This example describes the groupSet attribute of the specified network
    # interface.
    my $DescribeNetworkInterfaceAttributeResult =
      $ec2->DescribeNetworkInterfaceAttribute(
      {
        'Attribute'          => 'groupSet',
        'NetworkInterfaceId' => 'eni-686ea200'
      }
      );

    # Results:
    my $Groups = $DescribeNetworkInterfaceAttributeResult->Groups;
    my $NetworkInterfaceId =
      $DescribeNetworkInterfaceAttributeResult->NetworkInterfaceId;

    # Returns a L<Paws::EC2::DescribeNetworkInterfaceAttributeResult> object.
    # To describe the sourceDestCheck attribute of a network interface
    # This example describes the sourceDestCheck attribute of the specified
    # network interface.
    my $DescribeNetworkInterfaceAttributeResult =
      $ec2->DescribeNetworkInterfaceAttribute(
      {
        'Attribute'          => 'sourceDestCheck',
        'NetworkInterfaceId' => 'eni-686ea200'
      }
      );

    # Results:
    my $NetworkInterfaceId =
      $DescribeNetworkInterfaceAttributeResult->NetworkInterfaceId;
    my $SourceDestCheck =
      $DescribeNetworkInterfaceAttributeResult->SourceDestCheck;

    # Returns a L<Paws::EC2::DescribeNetworkInterfaceAttributeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeNetworkInterfaceAttribute>

=head1 ATTRIBUTES


=head2 Attribute => Str

The attribute of the network interface. This parameter is required.

Valid values are: C<"description">, C<"groupSet">, C<"sourceDestCheck">, C<"attachment">

=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> NetworkInterfaceId => Str

The ID of the network interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNetworkInterfaceAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

