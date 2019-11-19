# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::DeleteSystemInstance;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw//;
  has Id => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteSystemInstance');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::DeleteSystemInstanceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'NameInRequest' => {
                       'Id' => 'id'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::DeleteSystemInstance - Arguments for method DeleteSystemInstance on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSystemInstance on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method DeleteSystemInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSystemInstance.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $DeleteSystemInstanceResponse = $iotthingsgraph->DeleteSystemInstance(
      Id => 'MyUrn',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/DeleteSystemInstance>

=head1 ATTRIBUTES


=head2 Id => Str

The ID of the system instance to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSystemInstance in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

