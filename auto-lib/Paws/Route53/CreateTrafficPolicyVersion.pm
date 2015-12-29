
package Paws::Route53::CreateTrafficPolicyVersion;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has Document => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrafficPolicyVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/trafficpolicy/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateTrafficPolicyVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateTrafficPolicyVersionResponse

=head1 ATTRIBUTES


=head2 Comment => Str

  Any comments that you want to include about the new traffic policy
version.

=head2 B<REQUIRED> Document => Str

  The definition of a new traffic policy version, in JSON format. You
must specify the full definition of the new traffic policy. You cannot
specify just the differences between the new version and a previous
version.

=head2 B<REQUIRED> Id => Str

  The ID of the traffic policy for which you want to create a new
version.


=cut

