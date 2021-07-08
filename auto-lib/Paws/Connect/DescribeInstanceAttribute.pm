
package Paws::Connect::DescribeInstanceAttribute;
  use Moose;
  has AttributeType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AttributeType', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceAttribute');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/attribute/{AttributeType}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::DescribeInstanceAttributeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeInstanceAttribute - Arguments for method DescribeInstanceAttribute on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstanceAttribute on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DescribeInstanceAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstanceAttribute.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $DescribeInstanceAttributeResponse = $connect->DescribeInstanceAttribute(
      AttributeType => 'INBOUND_CALLS',
      InstanceId    => 'MyInstanceId',

    );

    # Results:
    my $Attribute = $DescribeInstanceAttributeResponse->Attribute;

    # Returns a L<Paws::Connect::DescribeInstanceAttributeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DescribeInstanceAttribute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeType => Str

The type of attribute.

Valid values are: C<"INBOUND_CALLS">, C<"OUTBOUND_CALLS">, C<"CONTACTFLOW_LOGS">, C<"CONTACT_LENS">, C<"AUTO_RESOLVE_BEST_VOICES">, C<"USE_CUSTOM_TTS_VOICES">, C<"EARLY_MEDIA">

=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstanceAttribute in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

