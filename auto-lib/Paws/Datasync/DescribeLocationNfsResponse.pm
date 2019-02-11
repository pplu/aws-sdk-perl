
package Paws::Datasync::DescribeLocationNfsResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has OnPremConfig => (is => 'ro', isa => 'Paws::Datasync::OnPremConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationNfsResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time that the NFS location was created.


=head2 LocationArn => Str

The Amazon resource Name (ARN) of the NFS location that was described.


=head2 LocationUri => Str

The URL of the source NFS location that was described.


=head2 OnPremConfig => L<Paws::Datasync::OnPremConfig>




=head2 _request_id => Str


=cut

1;