
package Paws::WorkLink::DescribeWebsiteCertificateAuthorityResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkLink::Types qw//;
  has Certificate => (is => 'ro', isa => Str);
  has CreatedTime => (is => 'ro', isa => Str);
  has DisplayName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreatedTime' => {
                                  'type' => 'Str'
                                },
               'Certificate' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DisplayName' => {
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

Paws::WorkLink::DescribeWebsiteCertificateAuthorityResponse

=head1 ATTRIBUTES


=head2 Certificate => Str

The root certificate of the certificate authority.


=head2 CreatedTime => Str

The time that the certificate authority was added.


=head2 DisplayName => Str

The certificate name to display.


=head2 _request_id => Str


=cut

