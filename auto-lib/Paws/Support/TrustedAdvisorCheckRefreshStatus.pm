package Paws::Support::TrustedAdvisorCheckRefreshStatus;
  use Moose;
  has CheckId => (is => 'ro', isa => 'Str', request_name => 'checkId', traits => ['NameInRequest'], required => 1);
  has MillisUntilNextRefreshable => (is => 'ro', isa => 'Int', request_name => 'millisUntilNextRefreshable', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::TrustedAdvisorCheckRefreshStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::TrustedAdvisorCheckRefreshStatus object:

  $service_obj->Method(Att1 => { CheckId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::TrustedAdvisorCheckRefreshStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->CheckId

=head1 DESCRIPTION

The refresh status of a Trusted Advisor check.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CheckId => Str

  The unique identifier for the Trusted Advisor check.


=head2 B<REQUIRED> MillisUntilNextRefreshable => Int

  The amount of time, in milliseconds, until the Trusted Advisor check is
eligible for refresh.


=head2 B<REQUIRED> Status => Str

  The status of the Trusted Advisor check for which a refresh has been
requested: "none", "enqueued", "processing", "success", or "abandoned".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

