
package Paws::LakeFormation::GetDataLakeSettingsResponse;
  use Moose;
  has DataLakeSettings => (is => 'ro', isa => 'Paws::LakeFormation::DataLakeSettings');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetDataLakeSettingsResponse

=head1 ATTRIBUTES


=head2 DataLakeSettings => L<Paws::LakeFormation::DataLakeSettings>

A list of AWS Lake Formation principals.


=head2 _request_id => Str


=cut

1;