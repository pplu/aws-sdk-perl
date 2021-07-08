
package Paws::Datasync::DescribeLocationObjectStorage;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLocationObjectStorage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DescribeLocationObjectStorageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationObjectStorage - Arguments for method DescribeLocationObjectStorage on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLocationObjectStorage on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeLocationObjectStorage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLocationObjectStorage.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeLocationObjectStorageResponse =
      $datasync->DescribeLocationObjectStorage(
      LocationArn => 'MyLocationArn',

      );

    # Results:
    my $AccessKey      = $DescribeLocationObjectStorageResponse->AccessKey;
    my $AgentArns      = $DescribeLocationObjectStorageResponse->AgentArns;
    my $CreationTime   = $DescribeLocationObjectStorageResponse->CreationTime;
    my $LocationArn    = $DescribeLocationObjectStorageResponse->LocationArn;
    my $LocationUri    = $DescribeLocationObjectStorageResponse->LocationUri;
    my $ServerPort     = $DescribeLocationObjectStorageResponse->ServerPort;
    my $ServerProtocol = $DescribeLocationObjectStorageResponse->ServerProtocol;

    # Returns a L<Paws::Datasync::DescribeLocationObjectStorageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeLocationObjectStorage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationArn => Str

The Amazon Resource Name (ARN) of the self-managed object storage
server location that was described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLocationObjectStorage in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

