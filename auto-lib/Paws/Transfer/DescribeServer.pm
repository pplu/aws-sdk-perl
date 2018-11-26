
package Paws::Transfer::DescribeServer;
  use Moose;
  has ServerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::DescribeServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeServer - Arguments for method DescribeServer on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeServer on the
L<AWS Transfer for SFTP|Paws::Transfer> service. Use the attributes of this class
as arguments to method DescribeServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeServer.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $DescribeServerResponse = $transfer->DescribeServer(
      ServerId => 'MyServerId',

    );

    # Results:
    my $Server = $DescribeServerResponse->Server;

    # Returns a L<Paws::Transfer::DescribeServerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/DescribeServer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for an SFTP server.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeServer in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

