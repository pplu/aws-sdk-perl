
package Paws::IoT1ClickDevices::UntagResource;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::IoT1ClickDevices::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagKeys => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/tags/{resource-arn}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ResourceArn' => 'resource-arn'
                  },
  'IsRequired' => {
                    'TagKeys' => 1,
                    'ResourceArn' => 1
                  },
  'ParamInQuery' => {
                      'TagKeys' => 'tagKeys'
                    },
  'types' => {
               'TagKeys' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::UntagResource - Arguments for method UntagResource on L<Paws::IoT1ClickDevices>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<AWS IoT 1-Click Devices Service|Paws::IoT1ClickDevices> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $devices.iot1click = Paws->service('IoT1ClickDevices');
    $devices . iot1click->UntagResource(
      ResourceArn => 'My__string',
      TagKeys     => [ 'My__string', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devices.iot1click/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A collections of tag keys. For example, {"key1","key2"}




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

