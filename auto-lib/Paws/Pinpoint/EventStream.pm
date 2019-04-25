package Paws::Pinpoint::EventStream;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has DestinationStreamArn => (is => 'ro', isa => 'Str');
  has ExternalId => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has LastUpdatedBy => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
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

Model for an event publishing subscription export.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The ID of the application from which events should be published.


=head2 DestinationStreamArn => Str

  The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose
delivery stream to which you want to publish events. Firehose ARN:
arn:aws:firehose:REGION:ACCOUNT_ID:deliverystream/STREAM_NAME Kinesis
ARN: arn:aws:kinesis:REGION:ACCOUNT_ID:stream/STREAM_NAME


=head2 ExternalId => Str

  (Deprecated) Your AWS account ID, which you assigned to the ExternalID
key in an IAM trust policy. Used by Amazon Pinpoint to assume an IAM
role. This requirement is removed, and external IDs are not recommended
for IAM roles assumed by Amazon Pinpoint.


=head2 LastModifiedDate => Str

  The date the event stream was last updated in ISO 8601 format.


=head2 LastUpdatedBy => Str

  The IAM user who last modified the event stream.


=head2 RoleArn => Str

  The IAM role that authorizes Amazon Pinpoint to publish events to the
stream in your account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

