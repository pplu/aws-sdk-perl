
package Paws::DeviceFarm::TagResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::TagResource - Arguments for method TagResource on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $TagResourceResponse = $devicefarm->TagResource(
      ResourceARN => 'MyDeviceFarmArn',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The Amazon Resource Name (ARN) of the resource or resources to which to
add tags. You can associate tags with the following Device Farm
resources: C<PROJECT>, C<RUN>, C<NETWORK_PROFILE>, C<INSTANCE_PROFILE>,
C<DEVICE_INSTANCE>, C<SESSION>, C<DEVICE_POOL>, C<DEVICE>, and
C<VPCE_CONFIGURATION>.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::DeviceFarm::Tag>]

The tags to add to the resource. A tag is an array of key-value pairs.
Tag keys can have a maximum character length of 128 characters. Tag
values can have a maximum length of 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

