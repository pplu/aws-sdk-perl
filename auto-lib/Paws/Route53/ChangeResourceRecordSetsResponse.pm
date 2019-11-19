
package Paws::Route53::ChangeResourceRecordSetsResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_ChangeInfo/;
  has ChangeInfo => (is => 'ro', isa => Route53_ChangeInfo, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ChangeInfo' => {
                                 'type' => 'Route53_ChangeInfo',
                                 'class' => 'Paws::Route53::ChangeInfo'
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

Paws::Route53::ChangeResourceRecordSetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeInfo => Route53_ChangeInfo

A complex type that contains information about changes made to your
hosted zone.

This element contains an ID that you use when performing a GetChange
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetChange.html)
action to get detailed information about the change.




=cut

