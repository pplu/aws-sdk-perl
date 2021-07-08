
package Paws::Datasync::DescribeLocationSmb;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLocationSmb');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DescribeLocationSmbResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationSmb - Arguments for method DescribeLocationSmb on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLocationSmb on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeLocationSmb.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLocationSmb.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeLocationSmbResponse = $datasync->DescribeLocationSmb(
      LocationArn => 'MyLocationArn',

    );

    # Results:
    my $AgentArns    = $DescribeLocationSmbResponse->AgentArns;
    my $CreationTime = $DescribeLocationSmbResponse->CreationTime;
    my $Domain       = $DescribeLocationSmbResponse->Domain;
    my $LocationArn  = $DescribeLocationSmbResponse->LocationArn;
    my $LocationUri  = $DescribeLocationSmbResponse->LocationUri;
    my $MountOptions = $DescribeLocationSmbResponse->MountOptions;
    my $User         = $DescribeLocationSmbResponse->User;

    # Returns a L<Paws::Datasync::DescribeLocationSmbResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeLocationSmb>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationArn => Str

The Amazon Resource Name (ARN) of the SMB location to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLocationSmb in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

