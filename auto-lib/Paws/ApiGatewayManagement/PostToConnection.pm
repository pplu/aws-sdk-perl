
package Paws::ApiGatewayManagement::PostToConnection;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'connectionId', required => 1);
  has Data => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Data');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PostToConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/@connections/{connectionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayManagement::PostToConnection - Arguments for method PostToConnection on L<Paws::ApiGatewayManagement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PostToConnection on the
L<AmazonApiGatewayManagementApi|Paws::ApiGatewayManagement> service. Use the attributes of this class
as arguments to method PostToConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PostToConnection.

=head1 SYNOPSIS

    my $execute-api = Paws->service('ApiGatewayManagement');
    $execute -api->PostToConnection(
      ConnectionId => 'My__string',
      Data         => 'BlobData',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/execute-api/PostToConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str

The identifier of the connection that a specific client is using.



=head2 B<REQUIRED> Data => Str

The data to be sent to the client specified by its connection id.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PostToConnection in L<Paws::ApiGatewayManagement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

