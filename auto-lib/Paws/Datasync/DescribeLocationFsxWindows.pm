
package Paws::Datasync::DescribeLocationFsxWindows;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLocationFsxWindows');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DescribeLocationFsxWindowsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationFsxWindows - Arguments for method DescribeLocationFsxWindows on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLocationFsxWindows on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeLocationFsxWindows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLocationFsxWindows.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeLocationFsxWindowsResponse =
      $datasync->DescribeLocationFsxWindows(
      LocationArn => 'MyLocationArn',

      );

    # Results:
    my $CreationTime = $DescribeLocationFsxWindowsResponse->CreationTime;
    my $Domain       = $DescribeLocationFsxWindowsResponse->Domain;
    my $LocationArn  = $DescribeLocationFsxWindowsResponse->LocationArn;
    my $LocationUri  = $DescribeLocationFsxWindowsResponse->LocationUri;
    my $SecurityGroupArns =
      $DescribeLocationFsxWindowsResponse->SecurityGroupArns;
    my $User = $DescribeLocationFsxWindowsResponse->User;

    # Returns a L<Paws::Datasync::DescribeLocationFsxWindowsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeLocationFsxWindows>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationArn => Str

The Amazon Resource Name (ARN) of the FSx for Windows location to
describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLocationFsxWindows in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

