
package Paws::AppRunner::CreateConnection;
  use Moose;
  has ConnectionName => (is => 'ro', isa => 'Str', required => 1);
  has ProviderType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AppRunner::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::CreateConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::CreateConnection - Arguments for method CreateConnection on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnection on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method CreateConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnection.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $CreateConnectionResponse = $apprunner->CreateConnection(
      ConnectionName => 'MyConnectionName',
      ProviderType   => 'GITHUB',
      Tags           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Connection = $CreateConnectionResponse->Connection;

    # Returns a L<Paws::AppRunner::CreateConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/CreateConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionName => Str

A name for the new connection. It must be unique across all App Runner
connections for the AWS account in the AWS Region.



=head2 B<REQUIRED> ProviderType => Str

The source repository provider.

Valid values are: C<"GITHUB">

=head2 Tags => ArrayRef[L<Paws::AppRunner::Tag>]

A list of metadata items that you can associate with your connection
resource. A tag is a key-value pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnection in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

