# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::UntagResource;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::IoTThingsGraph::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagKeys => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::UntagResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'TagKeys' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            }
             },
  'NameInRequest' => {
                       'ResourceArn' => 'resourceArn',
                       'TagKeys' => 'tagKeys'
                     },
  'IsRequired' => {
                    'TagKeys' => 1,
                    'ResourceArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::UntagResource - Arguments for method UntagResource on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $UntagResourceResponse = $iotthingsgraph->UntagResource(
      ResourceArn => 'MyResourceArn',
      TagKeys     => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource whose tags are to be
removed.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of tag key names to remove from the resource. You don't specify
the value. Both the key and its associated value are removed.

This parameter to the API requires a JSON text string argument. For
information on how to format a JSON parameter for the various command
line tool environments, see Using JSON for Parameters
(https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html#cli-using-param-json)
in the I<AWS CLI User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

