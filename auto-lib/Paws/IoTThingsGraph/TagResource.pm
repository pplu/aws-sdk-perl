# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::TagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_Tag/;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[IoTThingsGraph_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::TagResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'ArrayRef[IoTThingsGraph_Tag]',
                           'class' => 'Paws::IoTThingsGraph::Tag'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'ResourceArn' => 'resourceArn'
                     },
  'IsRequired' => {
                    'ResourceArn' => 1,
                    'Tags' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::TagResource - Arguments for method TagResource on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $TagResourceResponse = $iotthingsgraph->TagResource(
      ResourceArn => 'MyResourceArn',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource whose tags are returned.



=head2 B<REQUIRED> Tags => ArrayRef[IoTThingsGraph_Tag]

A list of tags to add to the resource.E<gt>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

