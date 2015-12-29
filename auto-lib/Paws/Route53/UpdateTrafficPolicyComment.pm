
package Paws::Route53::UpdateTrafficPolicyComment;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id' , required => 1);
  has Version => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'Version' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTrafficPolicyComment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/trafficpolicy/{Id}/{Version}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::UpdateTrafficPolicyCommentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::UpdateTrafficPolicyCommentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Comment => Str

  The new comment for the specified traffic policy and version.

=head2 B<REQUIRED> Id => Str

  The value of C<Id> for the traffic policy for which you want to update
the comment.

=head2 B<REQUIRED> Version => Int

  The value of C<Version> for the traffic policy for which you want to
update the comment.


=cut

