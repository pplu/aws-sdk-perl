
package Paws::Route53::UpdateHostedZoneComment;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateHostedZoneComment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::UpdateHostedZoneCommentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::UpdateHostedZoneComment - Arguments for method UpdateHostedZoneComment on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateHostedZoneComment on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method UpdateHostedZoneComment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateHostedZoneComment.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $UpdateHostedZoneCommentResponse = $route53->UpdateHostedZoneComment(
      Id      => 'MyResourceId',
      Comment => 'MyResourceDescription',    # OPTIONAL
    );

    # Results:
    my $HostedZone = $UpdateHostedZoneCommentResponse->HostedZone;

    # Returns a L<Paws::Route53::UpdateHostedZoneCommentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/UpdateHostedZoneComment>

=head1 ATTRIBUTES


=head2 Comment => Str

The new comment for the hosted zone. If you don't specify a value for
C<Comment>, Amazon Route 53 deletes the existing value of the
C<Comment> element, if any.



=head2 B<REQUIRED> Id => Str

The ID for the hosted zone that you want to update the comment for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateHostedZoneComment in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

