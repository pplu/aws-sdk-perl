
package Paws::ApiGatewayManagement::GetConnection;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayManagement::Types qw//;
  has ConnectionId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetConnection');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/@connections/{connectionId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGatewayManagement::GetConnectionResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ConnectionId' => 'connectionId'
                  },
  'types' => {
               'ConnectionId' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'ConnectionId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayManagement::GetConnection - Arguments for method GetConnection on L<Paws::ApiGatewayManagement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConnection on the
L<AmazonApiGatewayManagementApi|Paws::ApiGatewayManagement> service. Use the attributes of this class
as arguments to method GetConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConnection.

=head1 SYNOPSIS

    my $execute-api = Paws->service('ApiGatewayManagement');
    my $GetConnectionResponse = $execute -api->GetConnection(
      ConnectionId => 'My__string',

    );

    # Results:
    my $ConnectedAt  = $GetConnectionResponse->ConnectedAt;
    my $Identity     = $GetConnectionResponse->Identity;
    my $LastActiveAt = $GetConnectionResponse->LastActiveAt;

    # Returns a L<Paws::ApiGatewayManagement::GetConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/execute-api/GetConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConnection in L<Paws::ApiGatewayManagement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

