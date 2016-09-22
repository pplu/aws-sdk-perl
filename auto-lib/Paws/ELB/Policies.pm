package Paws::ELB::Policies;
  use Moose;
  has AppCookieStickinessPolicies => (is => 'ro', isa => 'ArrayRef[Paws::ELB::AppCookieStickinessPolicy]');
  has LBCookieStickinessPolicies => (is => 'ro', isa => 'ArrayRef[Paws::ELB::LBCookieStickinessPolicy]');
  has OtherPolicies => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
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


=head2 AppCookieStickinessPolicies => ArrayRef[L<Paws::ELB::AppCookieStickinessPolicy>]

  The stickiness policies created using CreateAppCookieStickinessPolicy.


=head2 LBCookieStickinessPolicies => ArrayRef[L<Paws::ELB::LBCookieStickinessPolicy>]

  The stickiness policies created using CreateLBCookieStickinessPolicy.


=head2 OtherPolicies => ArrayRef[Str|Undef]

  The policies other than the stickiness policies.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

