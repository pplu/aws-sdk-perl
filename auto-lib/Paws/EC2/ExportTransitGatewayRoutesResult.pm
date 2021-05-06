
package Paws::EC2::ExportTransitGatewayRoutesResult;
  use Moose;
  has S3Location => (is => 'ro', isa => 'Str', request_name => 's3Location', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ExportTransitGatewayRoutesResult

=head1 ATTRIBUTES


=head2 S3Location => Str

The URL of the exported file in Amazon S3. For example,
s3://I<bucket_name>/VPCTransitGateway/TransitGatewayRouteTables/I<file_name>.


=head2 _request_id => Str


=cut

