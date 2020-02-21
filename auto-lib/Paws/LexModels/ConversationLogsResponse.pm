package Paws::LexModels::ConversationLogsResponse;
  use Moose;
  has IamRoleArn => (is => 'ro', isa => 'Str', request_name => 'iamRoleArn', traits => ['NameInRequest']);
  has LogSettings => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::LogSettingsResponse]', request_name => 'logSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::ConversationLogsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::ConversationLogsResponse object:

  $service_obj->Method(Att1 => { IamRoleArn => $value, ..., LogSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::ConversationLogsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->IamRoleArn

=head1 DESCRIPTION

Contains information about conversation log settings.

=head1 ATTRIBUTES


=head2 IamRoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role used to write your logs
to CloudWatch Logs or an S3 bucket.


=head2 LogSettings => ArrayRef[L<Paws::LexModels::LogSettingsResponse>]

  The settings for your conversation logs. You can log text, audio, or
both.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

