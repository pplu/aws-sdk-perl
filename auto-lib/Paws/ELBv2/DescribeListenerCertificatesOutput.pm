# Generated from callresult_class.tt

package Paws::ELBv2::DescribeListenerCertificatesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_Certificate/;
  has Certificates => (is => 'ro', isa => ArrayRef[ELBv2_Certificate]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'Certificates' => {
                                   'class' => 'Paws::ELBv2::Certificate',
                                   'type' => 'ArrayRef[ELBv2_Certificate]'
                                 }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeListenerCertificatesOutput

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[ELBv2_Certificate]

Information about the certificates.


=head2 NextMarker => Str

If there are additional results, this is the marker for the next set of
results. Otherwise, this is null.


=head2 _request_id => Str


=cut

