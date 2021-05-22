
package Paws::IoTSiteWise::BatchDisassociateProjectAssetsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetErrorDetails]', traits => ['NameInRequest'], request_name => 'errors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::BatchDisassociateProjectAssetsResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::IoTSiteWise::AssetErrorDetails>]

A list of associated error information, if any.


=head2 _request_id => Str


=cut

