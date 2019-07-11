
package Paws::IoTThingsGraph::UndeploySystemInstance;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UndeploySystemInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTThingsGraph::UndeploySystemInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::UndeploySystemInstance - Arguments for method UndeploySystemInstance on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UndeploySystemInstance on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method UndeploySystemInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UndeploySystemInstance.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $UndeploySystemInstanceResponse =
      $iotthingsgraph->UndeploySystemInstance(
      Id => 'MyUrn',    # OPTIONAL
      );

    # Results:
    my $Summary = $UndeploySystemInstanceResponse->Summary;

    # Returns a L<Paws::IoTThingsGraph::UndeploySystemInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/UndeploySystemInstance>

=head1 ATTRIBUTES


=head2 Id => Str

The ID of the system instance to remove from its target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UndeploySystemInstance in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

