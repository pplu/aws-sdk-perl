
package Paws::Route53::CreateReusableDelegationSet;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has HostedZoneId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReusableDelegationSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/delegationset');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateReusableDelegationSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateReusableDelegationSet

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

A unique string that identifies the request, and that allows you to
retry failed C<CreateReusableDelegationSet> requests without the risk
of executing the operation twice. You must use a unique
C<CallerReference> string every time you submit a
C<CreateReusableDelegationSet> request. C<CallerReference> can be any
unique string, for example a date/time stamp.



=head2 HostedZoneId => Str

If you want to mark the delegation set for an existing hosted zone as
reusable, the ID for that hosted zone.




=cut

