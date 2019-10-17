
package Paws::IAM::GetOrganizationsAccessReportResponse;
  use Moo;
  use JSON::MaybeXS;
  use URL::Encode;
  use Types::Standard qw/Str ArrayRef Bool Int/;
  use Paws::IAM::Types qw/IAM_ErrorDetails IAM_AccessDetail/;
  has AccessDetails => (is => 'ro', isa => ArrayRef[IAM_AccessDetail]);
  has ErrorDetails => (is => 'ro', isa => IAM_ErrorDetails);
  has IsTruncated => (is => 'ro', isa => Bool);
  has JobCompletionDate => (is => 'ro', isa => Str);
  has JobCreationDate => (is => 'ro', isa => Str, required => 1);
  has JobStatus => (is => 'ro', isa => Str, required => 1);
  has Marker => (is => 'ro', isa => Str);
  has NumberOfServicesAccessible => (is => 'ro', isa => Int);
  has NumberOfServicesNotAccessed => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'NumberOfServicesNotAccessed' => {
                                                  'type' => 'Int'
                                                },
               'ErrorDetails' => {
                                   'class' => 'Paws::IAM::ErrorDetails',
                                   'type' => 'IAM_ErrorDetails'
                                 },
               'JobStatus' => {
                                'type' => 'Str'
                              },
               'NumberOfServicesAccessible' => {
                                                 'type' => 'Int'
                                               },
               'JobCreationDate' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AccessDetails' => {
                                    'class' => 'Paws::IAM::AccessDetail',
                                    'type' => 'ArrayRef[IAM_AccessDetail]'
                                  },
               'JobCompletionDate' => {
                                        'type' => 'Str'
                                      },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'JobCreationDate' => 1,
                    'JobStatus' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetOrganizationsAccessReportResponse

=head1 ATTRIBUTES


=head2 AccessDetails => ArrayRef[IAM_AccessDetail]

An object that contains details about the most recent attempt to access
the service.


=head2 ErrorDetails => IAM_ErrorDetails




=head2 IsTruncated => Bool

A flag that indicates whether there are more items to return. If your
results were truncated, you can make a subsequent pagination request
using the C<Marker> request parameter to retrieve more items. Note that
IAM might return fewer than the C<MaxItems> number of results even when
there are more results available. We recommend that you check
C<IsTruncated> after every call to ensure that you receive all your
results.


=head2 JobCompletionDate => Str

The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the generated report job was
completed or failed.

This field is null if the job is still in progress, as indicated by a
job status value of C<IN_PROGRESS>.


=head2 B<REQUIRED> JobCreationDate => Str

The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the report job was created.


=head2 B<REQUIRED> JobStatus => Str

The status of the job.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">
=head2 Marker => Str

When C<IsTruncated> is C<true>, this element is present and contains
the value to use for the C<Marker> parameter in a subsequent pagination
request.


=head2 NumberOfServicesAccessible => Int

The number of services that the applicable SCPs allow account
principals to access.


=head2 NumberOfServicesNotAccessed => Int

The number of services that account principals are allowed but did not
attempt to access.


=head2 _request_id => Str


=cut

