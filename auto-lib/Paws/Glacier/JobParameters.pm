package Paws::Glacier::JobParameters;
  use Moose;
  has ArchiveId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Format => (is => 'ro', isa => 'Str');
  has InventoryRetrievalParameters => (is => 'ro', isa => 'Paws::Glacier::InventoryRetrievalJobInput');
  has OutputLocation => (is => 'ro', isa => 'Paws::Glacier::OutputLocation');
  has RetrievalByteRange => (is => 'ro', isa => 'Str');
  has SelectParameters => (is => 'ro', isa => 'Paws::Glacier::SelectParameters');
  has SNSTopic => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::JobParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::JobParameters object:

  $service_obj->Method(Att1 => { ArchiveId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::JobParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->ArchiveId

=head1 DESCRIPTION

Provides options for defining a job.

=head1 ATTRIBUTES


=head2 ArchiveId => Str

  The ID of the archive that you want to retrieve. This field is required
only if C<Type> is set to C<select> or C<archive-retrieval>codeE<gt>.
An error occurs if you specify this request parameter for an inventory
retrieval job request.


=head2 Description => Str

  The optional description for the job. The description must be less than
or equal to 1,024 bytes. The allowable characters are 7-bit ASCII
without control codes-specifically, ASCII values 32-126 decimal or
0x20-0x7E hexadecimal.


=head2 Format => Str

  When initiating a job to retrieve a vault inventory, you can optionally
add this parameter to your request to specify the output format. If you
are initiating an inventory job and do not specify a Format field, JSON
is the default format. Valid values are "CSV" and "JSON".


=head2 InventoryRetrievalParameters => L<Paws::Glacier::InventoryRetrievalJobInput>

  Input parameters used for range inventory retrieval.


=head2 OutputLocation => L<Paws::Glacier::OutputLocation>

  Contains information about the location where the select job results
are stored.


=head2 RetrievalByteRange => Str

  The byte range to retrieve for an archive retrieval. in the form
"I<StartByteValue>-I<EndByteValue>" If not specified, the whole archive
is retrieved. If specified, the byte range must be megabyte (1024*1024)
aligned which means that I<StartByteValue> must be divisible by 1 MB
and I<EndByteValue> plus 1 must be divisible by 1 MB or be the end of
the archive specified as the archive byte size value minus 1. If
RetrievalByteRange is not megabyte aligned, this operation returns a
400 response.

An error occurs if you specify this field for an inventory retrieval
job request.


=head2 SelectParameters => L<Paws::Glacier::SelectParameters>

  Contains the parameters that define a job.


=head2 SNSTopic => Str

  The Amazon SNS topic ARN to which Amazon Glacier sends a notification
when the job is completed and the output is ready for you to download.
The specified topic publishes the notification to its subscribers. The
SNS topic must exist.


=head2 Tier => Str

  The tier to use for a select or an archive retrieval job. Valid values
are C<Expedited>, C<Standard>, or C<Bulk>. C<Standard> is the default.


=head2 Type => Str

  The job type. You can initiate a job to perform a select query on an
archive, retrieve an archive, or get an inventory of a vault. Valid
values are "select", "archive-retrieval" and "inventory-retrieval".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

