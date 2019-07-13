
package Paws::Datasync::DescribeLocationS3;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLocationS3');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DescribeLocationS3Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationS3 - Arguments for method DescribeLocationS3 on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLocationS3 on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeLocationS3.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLocationS3.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeLocationS3Response = $datasync->DescribeLocationS3(
      LocationArn => 'MyLocationArn',

    );

    # Results:
    my $CreationTime = $DescribeLocationS3Response->CreationTime;
    my $LocationArn  = $DescribeLocationS3Response->LocationArn;
    my $LocationUri  = $DescribeLocationS3Response->LocationUri;
    my $S3Config     = $DescribeLocationS3Response->S3Config;

    # Returns a L<Paws::Datasync::DescribeLocationS3Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeLocationS3>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationArn => Str

The Amazon Resource Name (ARN) of the Amazon S3 bucket location to
describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLocationS3 in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

