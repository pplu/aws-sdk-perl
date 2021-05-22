
package Paws::ES::RejectInboundCrossClusterSearchConnection;
  use Moose;
  has CrossClusterSearchConnectionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConnectionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RejectInboundCrossClusterSearchConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/ccs/inboundConnection/{ConnectionId}/reject');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::RejectInboundCrossClusterSearchConnectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::RejectInboundCrossClusterSearchConnection - Arguments for method RejectInboundCrossClusterSearchConnection on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RejectInboundCrossClusterSearchConnection on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method RejectInboundCrossClusterSearchConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RejectInboundCrossClusterSearchConnection.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $RejectInboundCrossClusterSearchConnectionResponse =
      $es->RejectInboundCrossClusterSearchConnection(
      CrossClusterSearchConnectionId => 'MyCrossClusterSearchConnectionId',

      );

    # Results:
    my $CrossClusterSearchConnection =
      $RejectInboundCrossClusterSearchConnectionResponse
      ->CrossClusterSearchConnection;

# Returns a L<Paws::ES::RejectInboundCrossClusterSearchConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/RejectInboundCrossClusterSearchConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CrossClusterSearchConnectionId => Str

The id of the inbound connection that you want to reject.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RejectInboundCrossClusterSearchConnection in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

