
package Paws::S3::GetBucketRequestPaymentOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has Payer => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Payer' => {
                            'type' => 'Str'
                          },
               '_request_id' => {
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

Paws::S3::GetBucketRequestPaymentOutput

=head1 ATTRIBUTES


=head2 Payer => Str

Specifies who pays for the download and request fees.

Valid values are: C<"Requester">, C<"BucketOwner">


=cut

