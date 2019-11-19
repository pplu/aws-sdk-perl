# Generated from default/object.tt
package Paws::ELB::Policies;
  use Moo;
  use Types::Standard qw/ArrayRef Str Undef/;
  use Paws::ELB::Types qw/ELB_AppCookieStickinessPolicy ELB_LBCookieStickinessPolicy/;
  has AppCookieStickinessPolicies => (is => 'ro', isa => ArrayRef[ELB_AppCookieStickinessPolicy]);
  has LBCookieStickinessPolicies => (is => 'ro', isa => ArrayRef[ELB_LBCookieStickinessPolicy]);
  has OtherPolicies => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AppCookieStickinessPolicies' => {
                                                  'type' => 'ArrayRef[ELB_AppCookieStickinessPolicy]',
                                                  'class' => 'Paws::ELB::AppCookieStickinessPolicy'
                                                },
               'LBCookieStickinessPolicies' => {
                                                 'class' => 'Paws::ELB::LBCookieStickinessPolicy',
                                                 'type' => 'ArrayRef[ELB_LBCookieStickinessPolicy]'
                                               },
               'OtherPolicies' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::Policies

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELB::Policies object:

  $service_obj->Method(Att1 => { AppCookieStickinessPolicies => $value, ..., OtherPolicies => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELB::Policies object:

  $result = $service_obj->Method(...);
  $result->Att1->AppCookieStickinessPolicies

=head1 DESCRIPTION

The policies for a load balancer.

=head1 ATTRIBUTES


=head2 AppCookieStickinessPolicies => ArrayRef[ELB_AppCookieStickinessPolicy]

  The stickiness policies created using CreateAppCookieStickinessPolicy.


=head2 LBCookieStickinessPolicies => ArrayRef[ELB_LBCookieStickinessPolicy]

  The stickiness policies created using CreateLBCookieStickinessPolicy.


=head2 OtherPolicies => ArrayRef[Str|Undef]

  The policies other than the stickiness policies.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

