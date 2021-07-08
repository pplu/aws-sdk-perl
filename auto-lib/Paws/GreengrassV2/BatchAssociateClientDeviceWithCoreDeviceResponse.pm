
package Paws::GreengrassV2::BatchAssociateClientDeviceWithCoreDeviceResponse;
  use Moose;
  has ErrorEntries => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::AssociateClientDeviceWithCoreDeviceErrorEntry]', traits => ['NameInRequest'], request_name => 'errorEntries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::BatchAssociateClientDeviceWithCoreDeviceResponse

=head1 ATTRIBUTES


=head2 ErrorEntries => ArrayRef[L<Paws::GreengrassV2::AssociateClientDeviceWithCoreDeviceErrorEntry>]

The list of any errors for the entries in the request. Each error entry
contains the name of the AWS IoT thing that failed to associate.


=head2 _request_id => Str


=cut

