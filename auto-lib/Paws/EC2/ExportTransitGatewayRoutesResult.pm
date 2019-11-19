
package Paws::EC2::ExportTransitGatewayRoutesResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has S3Location => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'S3Location' => 's3Location'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'S3Location' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }

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

