package Paws::LexModels::LogSettingsRequest;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str', request_name => 'destination', traits => ['NameInRequest'], required => 1);
  has KmsKeyArn => (is => 'ro', isa => 'Str', request_name => 'kmsKeyArn', traits => ['NameInRequest']);
  has LogType => (is => 'ro', isa => 'Str', request_name => 'logType', traits => ['NameInRequest'], required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', request_name => 'resourceArn', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::LogSettingsRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::LogSettingsRequest object:

  $service_obj->Method(Att1 => { Destination => $value, ..., ResourceArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::LogSettingsRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

Settings used to configure delivery mode and destination for
conversation logs.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => Str

  Where the logs will be delivered. Text logs are delivered to a
CloudWatch Logs log group. Audio logs are delivered to an S3 bucket.


=head2 KmsKeyArn => Str

  The Amazon Resource Name (ARN) of the AWS KMS customer managed key for
encrypting audio logs delivered to an S3 bucket. The key does not apply
to CloudWatch Logs and is optional for S3 buckets.


=head2 B<REQUIRED> LogType => Str

  The type of logging to enable. Text logs are delivered to a CloudWatch
Logs log group. Audio logs are delivered to an S3 bucket.


=head2 B<REQUIRED> ResourceArn => Str

  The Amazon Resource Name (ARN) of the CloudWatch Logs log group or S3
bucket where the logs should be delivered.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

