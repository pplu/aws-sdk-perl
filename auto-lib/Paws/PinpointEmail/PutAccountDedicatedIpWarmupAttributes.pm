
package Paws::PinpointEmail::PutAccountDedicatedIpWarmupAttributes;
  use Moose;
  has AutoWarmupEnabled => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAccountDedicatedIpWarmupAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/account/dedicated-ips/warmup');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::PutAccountDedicatedIpWarmupAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::PutAccountDedicatedIpWarmupAttributes - Arguments for method PutAccountDedicatedIpWarmupAttributes on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAccountDedicatedIpWarmupAttributes on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method PutAccountDedicatedIpWarmupAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAccountDedicatedIpWarmupAttributes.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $PutAccountDedicatedIpWarmupAttributesResponse =
      $email->PutAccountDedicatedIpWarmupAttributes(
      AutoWarmupEnabled => 1,    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutAccountDedicatedIpWarmupAttributes>

=head1 ATTRIBUTES


=head2 AutoWarmupEnabled => Bool

Enables or disables the automatic warm-up feature for dedicated IP
addresses that are associated with your Amazon Pinpoint account in the
current AWS Region. Set to C<true> to enable the automatic warm-up
feature, or set to C<false> to disable it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAccountDedicatedIpWarmupAttributes in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

