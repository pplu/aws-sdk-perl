
package Paws::IoTThingsGraph::GetSystemInstance;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSystemInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTThingsGraph::GetSystemInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetSystemInstance - Arguments for method GetSystemInstance on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSystemInstance on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method GetSystemInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSystemInstance.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $GetSystemInstanceResponse = $iotthingsgraph->GetSystemInstance(
      Id => 'MyUrn',

    );

    # Results:
    my $Description = $GetSystemInstanceResponse->Description;

    # Returns a L<Paws::IoTThingsGraph::GetSystemInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/GetSystemInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the system deployment instance. This value is returned by
C<CreateSystemInstance>.

The ID should be in the following format.

C<urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSystemInstance in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

