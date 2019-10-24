
package Paws::GroundStation::GetDataflowEndpointGroup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw//;
  has DataflowEndpointGroupId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetDataflowEndpointGroup');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/dataflowEndpointGroup/{dataflowEndpointGroupId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GroundStation::GetDataflowEndpointGroupResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataflowEndpointGroupId' => {
                                              'type' => 'Str'
                                            }
             },
  'ParamInURI' => {
                    'DataflowEndpointGroupId' => 'dataflowEndpointGroupId'
                  },
  'IsRequired' => {
                    'DataflowEndpointGroupId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetDataflowEndpointGroup - Arguments for method GetDataflowEndpointGroup on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataflowEndpointGroup on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method GetDataflowEndpointGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataflowEndpointGroup.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $GetDataflowEndpointGroupResponse =
      $groundstation->GetDataflowEndpointGroup(
      DataflowEndpointGroupId => 'MyString',

      );

    # Results:
    my $DataflowEndpointGroupArn =
      $GetDataflowEndpointGroupResponse->DataflowEndpointGroupArn;
    my $DataflowEndpointGroupId =
      $GetDataflowEndpointGroupResponse->DataflowEndpointGroupId;
    my $EndpointsDetails = $GetDataflowEndpointGroupResponse->EndpointsDetails;
    my $Tags             = $GetDataflowEndpointGroupResponse->Tags;

    # Returns a L<Paws::GroundStation::GetDataflowEndpointGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/GetDataflowEndpointGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataflowEndpointGroupId => Str

UUID of a dataflow endpoint group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataflowEndpointGroup in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

