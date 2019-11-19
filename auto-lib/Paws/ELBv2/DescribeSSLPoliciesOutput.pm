# Generated from callresult_class.tt

package Paws::ELBv2::DescribeSSLPoliciesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_SslPolicy/;
  has NextMarker => (is => 'ro', isa => Str);
  has SslPolicies => (is => 'ro', isa => ArrayRef[ELBv2_SslPolicy]);

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
               'SslPolicies' => {
                                  'class' => 'Paws::ELBv2::SslPolicy',
                                  'type' => 'ArrayRef[ELBv2_SslPolicy]'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeSSLPoliciesOutput

=head1 ATTRIBUTES


=head2 NextMarker => Str

If there are additional results, this is the marker for the next set of
results. Otherwise, this is null.


=head2 SslPolicies => ArrayRef[ELBv2_SslPolicy]

Information about the policies.


=head2 _request_id => Str


=cut

