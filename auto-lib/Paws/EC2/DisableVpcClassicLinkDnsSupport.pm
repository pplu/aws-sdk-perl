
package Paws::EC2::DisableVpcClassicLinkDnsSupport;
  use Moose;
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableVpcClassicLinkDnsSupport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DisableVpcClassicLinkDnsSupportResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisableVpcClassicLinkDnsSupport - Arguments for method DisableVpcClassicLinkDnsSupport on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableVpcClassicLinkDnsSupport on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DisableVpcClassicLinkDnsSupport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableVpcClassicLinkDnsSupport.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DisableVpcClassicLinkDnsSupportResult =
      $ec2->DisableVpcClassicLinkDnsSupport(
      VpcId => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Return = $DisableVpcClassicLinkDnsSupportResult->Return;

    # Returns a L<Paws::EC2::DisableVpcClassicLinkDnsSupportResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DisableVpcClassicLinkDnsSupport>

=head1 ATTRIBUTES


=head2 VpcId => Str

The ID of the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableVpcClassicLinkDnsSupport in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

