
package Paws::RDS::InstallationMediaMessage;
  use Moose;
  has InstallationMedia => (is => 'ro', isa => 'ArrayRef[Paws::RDS::InstallationMedia]', request_name => 'InstallationMedia', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::InstallationMediaMessage

=head1 ATTRIBUTES


=head2 InstallationMedia => ArrayRef[L<Paws::RDS::InstallationMedia>]

The list of InstallationMedia objects for the AWS account.


=head2 Marker => Str

An optional pagination token provided by a previous
DescribeInstallationMedia request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

