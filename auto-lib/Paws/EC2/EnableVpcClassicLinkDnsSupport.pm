
package Paws::EC2::EnableVpcClassicLinkDnsSupport;
  use Moose;
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableVpcClassicLinkDnsSupport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::EnableVpcClassicLinkDnsSupportResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableVpcClassicLinkDnsSupport - Arguments for method EnableVpcClassicLinkDnsSupport on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableVpcClassicLinkDnsSupport on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method EnableVpcClassicLinkDnsSupport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableVpcClassicLinkDnsSupport.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $EnableVpcClassicLinkDnsSupportResult =
      $ec2->EnableVpcClassicLinkDnsSupport(
      VpcId => 'MyVpcId',    # OPTIONAL
      );

    # Results:
    my $Return = $EnableVpcClassicLinkDnsSupportResult->Return;

    # Returns a L<Paws::EC2::EnableVpcClassicLinkDnsSupportResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/EnableVpcClassicLinkDnsSupport>

=head1 ATTRIBUTES


=head2 VpcId => Str

The ID of the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableVpcClassicLinkDnsSupport in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

