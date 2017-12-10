package Paws::Discovery::ExportInfo;
  use Moose;
  has ConfigurationsDownloadUrl => (is => 'ro', isa => 'Str', request_name => 'configurationsDownloadUrl', traits => ['NameInRequest']);
  has ExportId => (is => 'ro', isa => 'Str', request_name => 'exportId', traits => ['NameInRequest'], required => 1);
  has ExportRequestTime => (is => 'ro', isa => 'Str', request_name => 'exportRequestTime', traits => ['NameInRequest'], required => 1);
  has ExportStatus => (is => 'ro', isa => 'Str', request_name => 'exportStatus', traits => ['NameInRequest'], required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool', request_name => 'isTruncated', traits => ['NameInRequest']);
  has RequestedEndTime => (is => 'ro', isa => 'Str', request_name => 'requestedEndTime', traits => ['NameInRequest']);
  has RequestedStartTime => (is => 'ro', isa => 'Str', request_name => 'requestedStartTime', traits => ['NameInRequest']);
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

Information regarding the export status of discovered data. The value
is an array of objects.

=head1 ATTRIBUTES


=head2 ConfigurationsDownloadUrl => Str

  A URL for an Amazon S3 bucket where you can review the exported data.
The URL is displayed only if the export succeeded.


=head2 B<REQUIRED> ExportId => Str

  A unique identifier used to query an export.


=head2 B<REQUIRED> ExportRequestTime => Str

  The time that the data export was initiated.


=head2 B<REQUIRED> ExportStatus => Str

  The status of the data export job.


=head2 IsTruncated => Bool

  If true, the export of agent information exceeded the size limit for a
single export and the exported data is incomplete for the requested
time range. To address this, select a smaller time range for the export
by using C<startDate> and C<endDate>.


=head2 RequestedEndTime => Str

  The C<endTime> used in the C<StartExportTask> request. If no C<endTime>
was requested, this result does not appear in C<ExportInfo>.


=head2 RequestedStartTime => Str

  The value of C<startTime> parameter in the C<StartExportTask> request.
If no C<startTime> was requested, this result does not appear in
C<ExportInfo>.


=head2 B<REQUIRED> StatusMessage => Str

  A status message provided for API callers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

