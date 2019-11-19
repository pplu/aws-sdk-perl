# Generated from json/callresult_class.tt

package Paws::OpsWorks::RegisterElasticIpResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw//;
  has ElasticIp => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ElasticIp' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::RegisterElasticIpResult

=head1 ATTRIBUTES


=head2 ElasticIp => Str

The Elastic IP address.


=head2 _request_id => Str


=cut

1;