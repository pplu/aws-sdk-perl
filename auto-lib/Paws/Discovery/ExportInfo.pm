package Paws::Discovery::ExportInfo;
  use Moose;
  has ConfigurationsDownloadUrl => (is => 'ro', isa => 'Str', request_name => 'configurationsDownloadUrl', traits => ['NameInRequest']);
  has ExportId => (is => 'ro', isa => 'Str', request_name => 'exportId', traits => ['NameInRequest'], required => 1);
  has ExportRequestTime => (is => 'ro', isa => 'Str', request_name => 'exportRequestTime', traits => ['NameInRequest'], required => 1);
  has ExportStatus => (is => 'ro', isa => 'Str', request_name => 'exportStatus', traits => ['NameInRequest'], required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ExportInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::ExportInfo object:

  $service_obj->Method(Att1 => { ConfigurationsDownloadUrl => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::ExportInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationsDownloadUrl

=head1 DESCRIPTION

Information regarding the export status of the discovered data. The
value is an array of objects.

=head1 ATTRIBUTES


=head2 ConfigurationsDownloadUrl => Str

  A URL for an Amazon S3 bucket where you can review the configuration
data. The URL is displayed only if the export succeeded.


=head2 B<REQUIRED> ExportId => Str

  A unique identifier that you can use to query the export.


=head2 B<REQUIRED> ExportRequestTime => Str

  The time that the configuration data export was initiated.


=head2 B<REQUIRED> ExportStatus => Str

  The status of the configuration data export. The status can succeed,
fail, or be in-progress.


=head2 B<REQUIRED> StatusMessage => Str

  Helpful status messages for API callers. For example: Too many exports
in the last 6 hours. Export in progress. Export was successful.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

