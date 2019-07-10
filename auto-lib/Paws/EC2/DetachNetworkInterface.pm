
package Paws::EC2::DetachNetworkInterface;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attachmentId' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Force => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'force' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachNetworkInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DetachNetworkInterface - Arguments for method DetachNetworkInterface on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachNetworkInterface on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DetachNetworkInterface.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachNetworkInterface.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To detach a network interface from an instance
    # This example detaches the specified network interface from its attached
    # instance.
    $ec2->DetachNetworkInterface( 'AttachmentId' => 'eni-attach-66c4350a' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DetachNetworkInterface>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttachmentId => Str

The ID of the attachment.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Force => Bool

Specifies whether to force a detachment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachNetworkInterface in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

