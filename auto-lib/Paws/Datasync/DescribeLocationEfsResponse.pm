
package Paws::Datasync::DescribeLocationEfsResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has Ec2Config => (is => 'ro', isa => 'Paws::Datasync::Ec2Config');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationEfsResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time that the EFS location was created.


=head2 Ec2Config => L<Paws::Datasync::Ec2Config>




=head2 LocationArn => Str

The Amazon resource Name (ARN) of the EFS location that was described.


=head2 LocationUri => Str

The URL of the EFS location that was described.


=head2 _request_id => Str


=cut

1;