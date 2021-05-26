
package Paws::Datasync::DescribeLocationFsxWindowsResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has Domain => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has SecurityGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has User => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationFsxWindowsResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time that the FSx for Windows location was created.


=head2 Domain => Str

The name of the Windows domain that the FSx for Windows server belongs
to.


=head2 LocationArn => Str

The Amazon resource Name (ARN) of the FSx for Windows location that was
described.


=head2 LocationUri => Str

The URL of the FSx for Windows location that was described.


=head2 SecurityGroupArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the security groups that are
configured for the for the FSx for Windows file system.


=head2 User => Str

The user who has the permissions to access files and folders in the FSx
for Windows file system.


=head2 _request_id => Str


=cut

1;