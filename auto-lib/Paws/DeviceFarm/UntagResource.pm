# Generated from json/callargs_class.tt

package Paws::DeviceFarm::UntagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::DeviceFarm::Types qw//;
  has ResourceARN => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagKeys => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DeviceFarm::UntagResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagKeys' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'ResourceARN' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'TagKeys' => 1,
                    'ResourceARN' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UntagResource - Arguments for method UntagResource on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $UntagResourceResponse = $devicefarm->UntagResource(
      ResourceARN => 'MyAmazonResourceName',
      TagKeys     => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The Amazon Resource Name (ARN) of the resource(s) from which to delete
tags. You can associate tags with the following Device Farm resources:
C<PROJECT>, C<RUN>, C<NETWORK_PROFILE>, C<INSTANCE_PROFILE>,
C<DEVICE_INSTANCE>, C<SESSION>, C<DEVICE_POOL>, C<DEVICE>, and
C<VPCE_CONFIGURATION>.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The keys of the tags to be removed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

