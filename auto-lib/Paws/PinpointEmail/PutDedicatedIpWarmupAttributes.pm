
package Paws::PinpointEmail::PutDedicatedIpWarmupAttributes;
  use Moose;
  has Ip => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IP', required => 1);
  has WarmupPercentage => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDedicatedIpWarmupAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/dedicated-ips/{IP}/warmup');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::PutDedicatedIpWarmupAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::PutDedicatedIpWarmupAttributes - Arguments for method PutDedicatedIpWarmupAttributes on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDedicatedIpWarmupAttributes on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method PutDedicatedIpWarmupAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDedicatedIpWarmupAttributes.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $PutDedicatedIpWarmupAttributesResponse =
      $email->PutDedicatedIpWarmupAttributes(
      Ip               => 'MyIp',
      WarmupPercentage => 1,

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutDedicatedIpWarmupAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ip => Str

The dedicated IP address that you want to update the warm-up attributes
for.



=head2 B<REQUIRED> WarmupPercentage => Int

The warm-up percentage that you want to associate with the dedicated IP
address.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDedicatedIpWarmupAttributes in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

