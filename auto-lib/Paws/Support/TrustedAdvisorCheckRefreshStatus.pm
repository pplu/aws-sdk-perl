package Paws::Support::TrustedAdvisorCheckRefreshStatus;
  use Moose;
  has checkId => (is => 'ro', isa => 'Str', required => 1);
  has millisUntilNextRefreshable => (is => 'ro', isa => 'Int', required => 1);
  has status => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::TrustedAdvisorCheckRefreshStatus

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::TrustedAdvisorCheckRefreshStatus object:

  $service_obj->Method(Att1 => { checkId => $value, ..., status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::TrustedAdvisorCheckRefreshStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->checkId

=head1 ATTRIBUTES

=head2 B<REQUIRED> checkId => Str

  

The unique identifier for the Trusted Advisor check.










=head2 B<REQUIRED> millisUntilNextRefreshable => Int

  

The amount of time, in milliseconds, until the Trusted Advisor check is
eligible for refresh.










=head2 B<REQUIRED> status => Str

  

The status of the Trusted Advisor check for which a refresh has been
requested: "none", "enqueued", "processing", "success", or "abandoned".












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

