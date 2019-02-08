
package Paws::Shield::CreateProtection;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProtection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::CreateProtectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::CreateProtection - Arguments for method CreateProtection on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProtection on the
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method CreateProtection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProtection.

=head1 SYNOPSIS

    my $shield = Paws->service('Shield');
    my $CreateProtectionResponse = $shield->CreateProtection(
      Name        => 'MyProtectionName',
      ResourceArn => 'MyResourceArn',

    );

    # Results:
    my $ProtectionId = $CreateProtectionResponse->ProtectionId;

    # Returns a L<Paws::Shield::CreateProtectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield/CreateProtection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

Friendly name for the C<Protection> you are creating.



=head2 B<REQUIRED> ResourceArn => Str

The ARN (Amazon Resource Name) of the resource to be protected.

The ARN should be in one of the following formats:

=over

=item *

For an Application Load Balancer:
C<arn:aws:elasticloadbalancing:I<region>:I<account-id>:loadbalancer/app/I<load-balancer-name>/I<load-balancer-id>>

=item *

For an Elastic Load Balancer (Classic Load Balancer):
C<arn:aws:elasticloadbalancing:I<region>:I<account-id>:loadbalancer/I<load-balancer-name>>

=item *

For an AWS CloudFront distribution:
C<arn:aws:cloudfront::I<account-id>:distribution/I<distribution-id>>

=item *

For an AWS Global Accelerator accelerator:
C<arn:aws:globalaccelerator::I<account-id>:accelerator/I<accelerator-id>>

=item *

For Amazon Route 53: C<arn:aws:route53:::hostedzone/I<hosted-zone-id>>

=item *

For an Elastic IP address:
C<arn:aws:ec2:I<region>:I<account-id>:eip-allocation/I<allocation-id>>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProtection in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

