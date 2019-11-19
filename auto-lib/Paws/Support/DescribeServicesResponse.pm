# Generated from json/callresult_class.tt

package Paws::Support::DescribeServicesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Support::Types qw/Support_Service/;
  has Services => (is => 'ro', isa => ArrayRef[Support_Service]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Services' => 'services'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Services' => {
                               'type' => 'ArrayRef[Support_Service]',
                               'class' => 'Paws::Support::Service'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeServicesResponse

=head1 ATTRIBUTES


=head2 Services => ArrayRef[Support_Service]

A JSON-formatted list of AWS services.


=head2 _request_id => Str


=cut

1;