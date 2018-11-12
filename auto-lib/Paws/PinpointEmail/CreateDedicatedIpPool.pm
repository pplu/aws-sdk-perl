
package Paws::PinpointEmail::CreateDedicatedIpPool;
  use Moose;
  has PoolName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDedicatedIpPool');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/dedicated-ip-pools');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::CreateDedicatedIpPoolResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::CreateDedicatedIpPool - Arguments for method CreateDedicatedIpPool on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDedicatedIpPool on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method CreateDedicatedIpPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDedicatedIpPool.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $CreateDedicatedIpPoolResponse = $email->CreateDedicatedIpPool(
      PoolName => 'MyPoolName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateDedicatedIpPool>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PoolName => Str

The name of the dedicated IP pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDedicatedIpPool in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

