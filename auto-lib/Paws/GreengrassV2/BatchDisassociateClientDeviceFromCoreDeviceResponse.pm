
package Paws::GreengrassV2::BatchDisassociateClientDeviceFromCoreDeviceResponse;
  use Moose;
  has ErrorEntries => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::DisassociateClientDeviceFromCoreDeviceErrorEntry]', traits => ['NameInRequest'], request_name => 'errorEntries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::BatchDisassociateClientDeviceFromCoreDeviceResponse

=head1 ATTRIBUTES


=head2 ErrorEntries => ArrayRef[L<Paws::GreengrassV2::DisassociateClientDeviceFromCoreDeviceErrorEntry>]

The list of errors (if any) for the entries in the request. Each error
entry contains the name of the AWS IoT thing that failed to
disassociate.


=head2 _request_id => Str


=cut

