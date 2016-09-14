
package Paws::Route53::UpdateHostedZoneComment;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateHostedZoneComment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::UpdateHostedZoneCommentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::UpdateHostedZoneComment

=head1 ATTRIBUTES


=head2 Comment => Str

The new comment for the hosted zone. If you don't specify a value for
C<Comment>, Amazon Route 53 deletes the existing value of the
C<Comment> element, if any.



=head2 B<REQUIRED> Id => Str

The ID for the hosted zone for which you want to update the comment.




=cut

