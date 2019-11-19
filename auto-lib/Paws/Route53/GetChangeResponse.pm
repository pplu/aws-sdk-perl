
package Paws::Route53::GetChangeResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_ChangeInfo/;
  has ChangeInfo => (is => 'ro', isa => Route53_ChangeInfo, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChangeInfo' => {
                                 'class' => 'Paws::Route53::ChangeInfo',
                                 'type' => 'Route53_ChangeInfo'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ChangeInfo' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetChangeResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeInfo => Route53_ChangeInfo

A complex type that contains information about the specified change
batch.




=cut

