# Generated from default/object.tt
package Paws::Pinpoint::EventStream;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw//;
  has ApplicationId => (is => 'ro', isa => Str, required => 1);
  has DestinationStreamArn => (is => 'ro', isa => Str, required => 1);
  has ExternalId => (is => 'ro', isa => Str);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has LastUpdatedBy => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'LastUpdatedBy' => {
                                    'type' => 'Str'
                                  },
               'DestinationStreamArn' => {
                                           'type' => 'Str'
                                         },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'ExternalId' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'ApplicationId' => 1,
                    'RoleArn' => 1,
                    'DestinationStreamArn' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EventStream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EventStream object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EventStream object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Specifies settings for publishing event data to an Amazon Kinesis data
stream or an Amazon Kinesis Data Firehose delivery stream.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The unique identifier for the application to publish event data for.


=head2 B<REQUIRED> DestinationStreamArn => Str

  The Amazon Resource Name (ARN) of the Amazon Kinesis data stream or
Amazon Kinesis Data Firehose delivery stream to publish event data to.

For a Kinesis data stream, the ARN format is:
arn:aws:kinesis:region:account-id:stream/stream_name

For a Kinesis Data Firehose delivery stream, the ARN format is:
arn:aws:firehose:region:account-id:deliverystream/stream_name


=head2 ExternalId => Str

  (Deprecated) Your AWS account ID, which you assigned to an external ID
key in an IAM trust policy. Amazon Pinpoint previously used this value
to assume an IAM role when publishing event data, but we removed this
requirement. We don't recommend use of external IDs for IAM roles that
are assumed by Amazon Pinpoint.


=head2 LastModifiedDate => Str

  The date, in ISO 8601 format, when the event stream was last modified.


=head2 LastUpdatedBy => Str

  The IAM user who last modified the event stream.


=head2 B<REQUIRED> RoleArn => Str

  The AWS Identity and Access Management (IAM) role that authorizes
Amazon Pinpoint to publish event data to the stream in your AWS
account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

