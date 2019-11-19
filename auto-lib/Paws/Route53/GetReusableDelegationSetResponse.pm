
package Paws::Route53::GetReusableDelegationSetResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_DelegationSet/;
  has DelegationSet => (is => 'ro', isa => Route53_DelegationSet, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DelegationSet' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DelegationSet' => {
                                    'type' => 'Route53_DelegationSet',
                                    'class' => 'Paws::Route53::DelegationSet'
                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetReusableDelegationSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DelegationSet => Route53_DelegationSet

A complex type that contains information about the reusable delegation
set.




=cut

