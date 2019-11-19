# Generated from default/object.tt
package Paws::Pinpoint::ImportJobRequest;
  use Moo;
  use Types::Standard qw/Bool Str/;
  use Paws::Pinpoint::Types qw//;
  has DefineSegment => (is => 'ro', isa => Bool);
  has ExternalId => (is => 'ro', isa => Str);
  has Format => (is => 'ro', isa => Str, required => 1);
  has RegisterEndpoints => (is => 'ro', isa => Bool);
  has RoleArn => (is => 'ro', isa => Str, required => 1);
  has S3Url => (is => 'ro', isa => Str, required => 1);
  has SegmentId => (is => 'ro', isa => Str);
  has SegmentName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'S3Url' => 1,
                    'RoleArn' => 1,
                    'Format' => 1
                  },
  'types' => {
               'RegisterEndpoints' => {
                                        'type' => 'Bool'
                                      },
               'SegmentName' => {
                                  'type' => 'Str'
                                },
               'ExternalId' => {
                                 'type' => 'Str'
                               },
               'S3Url' => {
                            'type' => 'Str'
                          },
               'SegmentId' => {
                                'type' => 'Str'
                              },
               'DefineSegment' => {
                                    'type' => 'Bool'
                                  },
               'Format' => {
                             'type' => 'Str'
                           },
               'RoleArn' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ImportJobRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ImportJobRequest object:

  $service_obj->Method(Att1 => { DefineSegment => $value, ..., SegmentName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ImportJobRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->DefineSegment

=head1 DESCRIPTION

Specifies the settings for a job that imports endpoint definitions from
an Amazon Simple Storage Service (Amazon S3) bucket.

=head1 ATTRIBUTES


=head2 DefineSegment => Bool

  Specifies whether to create a segment that contains the endpoints, when
the endpoint definitions are imported.


=head2 ExternalId => Str

  (Deprecated) Your AWS account ID, which you assigned to an external ID
key in an IAM trust policy. Amazon Pinpoint previously used this value
to assume an IAM role when importing endpoint definitions, but we
removed this requirement. We don't recommend use of external IDs for
IAM roles that are assumed by Amazon Pinpoint.


=head2 B<REQUIRED> Format => Str

  The format of the files that contain the endpoint definitions to
import. Valid values are: CSV, for comma-separated values format; and,
JSON, for newline-delimited JSON format. If the Amazon S3 location
stores multiple files that use different formats, Amazon Pinpoint
imports data only from the files that use the specified format.


=head2 RegisterEndpoints => Bool

  Specifies whether to register the endpoints with Amazon Pinpoint, when
the endpoint definitions are imported.


=head2 B<REQUIRED> RoleArn => Str

  The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that authorizes Amazon Pinpoint to access the
Amazon S3 location to import endpoint definitions from.


=head2 B<REQUIRED> S3Url => Str

  The URL of the Amazon Simple Storage Service (Amazon S3) bucket that
contains the endpoint definitions to import. This location can be a
folder or a single file. If the location is a folder, Amazon Pinpoint
imports endpoint definitions from the files in this location, including
any subfolders that the folder contains.

The URL should be in the following format:
s3://bucket-name/folder-name/file-name. The location can end with the
key for an individual object or a prefix that qualifies multiple
objects.


=head2 SegmentId => Str

  The identifier for the segment to update or add the imported endpoint
definitions to, if the import job is meant to update an existing
segment.


=head2 SegmentName => Str

  The custom name for the segment that's created by the import job, if
the value of the DefineSegment property is true.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

