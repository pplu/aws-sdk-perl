
package Paws::IoTThingsGraph::GetUploadStatus;
  use Moose;
  has UploadId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUploadStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTThingsGraph::GetUploadStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetUploadStatus - Arguments for method GetUploadStatus on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUploadStatus on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method GetUploadStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUploadStatus.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $GetUploadStatusResponse = $iotthingsgraph->GetUploadStatus(
      UploadId => 'MyUploadId',

    );

    # Results:
    my $CreatedDate      = $GetUploadStatusResponse->CreatedDate;
    my $FailureReason    = $GetUploadStatusResponse->FailureReason;
    my $NamespaceArn     = $GetUploadStatusResponse->NamespaceArn;
    my $NamespaceName    = $GetUploadStatusResponse->NamespaceName;
    my $NamespaceVersion = $GetUploadStatusResponse->NamespaceVersion;
    my $UploadId         = $GetUploadStatusResponse->UploadId;
    my $UploadStatus     = $GetUploadStatusResponse->UploadStatus;

    # Returns a L<Paws::IoTThingsGraph::GetUploadStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/GetUploadStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UploadId => Str

The ID of the upload. This value is returned by the
C<UploadEntityDefinitions> action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUploadStatus in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

