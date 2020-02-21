package Paws::LexModels::LogSettingsResponse;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str', request_name => 'destination', traits => ['NameInRequest']);
  has KmsKeyArn => (is => 'ro', isa => 'Str', request_name => 'kmsKeyArn', traits => ['NameInRequest']);
  has LogType => (is => 'ro', isa => 'Str', request_name => 'logType', traits => ['NameInRequest']);
  has ResourceArn => (is => 'ro', isa => 'Str', request_name => 'resourceArn', traits => ['NameInRequest']);
  has ResourcePrefix => (is => 'ro', isa => 'Str', request_name => 'resourcePrefix', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::LogSettingsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::LogSettingsResponse object:

  $service_obj->Method(Att1 => { Destination => $value, ..., ResourcePrefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::LogSettingsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

The settings for conversation logs.

=head1 ATTRIBUTES


=head2 Destination => Str

  The destination where logs are delivered.


=head2 KmsKeyArn => Str

  The Amazon Resource Name (ARN) of the key used to encrypt audio logs in
an S3 bucket.


=head2 LogType => Str

  The type of logging that is enabled.


=head2 ResourceArn => Str

  The Amazon Resource Name (ARN) of the CloudWatch Logs log group or S3
bucket where the logs are delivered.


=head2 ResourcePrefix => Str

  The resource prefix is the first part of the S3 object key within the
S3 bucket that you specified to contain audio logs. For CloudWatch Logs
it is the prefix of the log stream name within the log group that you
specified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

