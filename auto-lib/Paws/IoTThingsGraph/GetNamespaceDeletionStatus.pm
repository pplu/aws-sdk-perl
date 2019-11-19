# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::GetNamespaceDeletionStatus;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw//;

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetNamespaceDeletionStatus');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::GetNamespaceDeletionStatusResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetNamespaceDeletionStatus - Arguments for method GetNamespaceDeletionStatus on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetNamespaceDeletionStatus on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method GetNamespaceDeletionStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetNamespaceDeletionStatus.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $GetNamespaceDeletionStatusResponse =
      $iotthingsgraph->GetNamespaceDeletionStatus();

    # Results:
    my $ErrorCode     = $GetNamespaceDeletionStatusResponse->ErrorCode;
    my $ErrorMessage  = $GetNamespaceDeletionStatusResponse->ErrorMessage;
    my $NamespaceArn  = $GetNamespaceDeletionStatusResponse->NamespaceArn;
    my $NamespaceName = $GetNamespaceDeletionStatusResponse->NamespaceName;
    my $Status        = $GetNamespaceDeletionStatusResponse->Status;

 # Returns a L<Paws::IoTThingsGraph::GetNamespaceDeletionStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/GetNamespaceDeletionStatus>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetNamespaceDeletionStatus in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

