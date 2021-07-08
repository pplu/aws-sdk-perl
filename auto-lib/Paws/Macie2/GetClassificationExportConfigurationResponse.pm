
package Paws::Macie2::GetClassificationExportConfigurationResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::Macie2::ClassificationExportConfiguration', traits => ['NameInRequest'], request_name => 'configuration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetClassificationExportConfigurationResponse

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::Macie2::ClassificationExportConfiguration>

The location where data classification results are stored, and the
encryption settings that are used when storing results in that
location.


=head2 _request_id => Str


=cut

