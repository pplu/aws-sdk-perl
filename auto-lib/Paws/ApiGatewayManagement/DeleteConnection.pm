
package Paws::ApiGatewayManagement::DeleteConnection;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayManagement::Types qw//;
  has ConnectionId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteConnection');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/@connections/{connectionId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ConnectionId' => 'connectionId'
                  },
  'IsRequired' => {
                    'ConnectionId' => 1
                  },
  'types' => {
               'ConnectionId' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayManagement::DeleteConnection - Arguments for method DeleteConnection on L<Paws::ApiGatewayManagement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConnection on the
L<AmazonApiGatewayManagementApi|Paws::ApiGatewayManagement> service. Use the attributes of this class
as arguments to method DeleteConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConnection.

=head1 SYNOPSIS

    my $execute-api = Paws->service('ApiGatewayManagement');
    $execute -api->DeleteConnection(
      ConnectionId => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/execute-api/DeleteConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConnection in L<Paws::ApiGatewayManagement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

