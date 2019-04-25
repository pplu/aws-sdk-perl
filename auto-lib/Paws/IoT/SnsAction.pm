package Paws::IoT::SnsAction;
  use Moose;
  has MessageFormat => (is => 'ro', isa => 'Str', request_name => 'messageFormat', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
  has TargetArn => (is => 'ro', isa => 'Str', request_name => 'targetArn', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::SnsAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::SnsAction object:

  $service_obj->Method(Att1 => { MessageFormat => $value, ..., TargetArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::SnsAction object:

  $result = $service_obj->Method(...);
  $result->Att1->MessageFormat

=head1 DESCRIPTION

Describes an action to publish to an Amazon SNS topic.

=head1 ATTRIBUTES


=head2 MessageFormat => Str

  (Optional) The message format of the message to publish. Accepted
values are "JSON" and "RAW". The default value of the attribute is
"RAW". SNS uses this setting to determine if the payload should be
parsed and relevant platform-specific bits of the payload should be
extracted. To read more about SNS message formats, see
http://docs.aws.amazon.com/sns/latest/dg/json-formats.html
(http://docs.aws.amazon.com/sns/latest/dg/json-formats.html) refer to
their official documentation.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the IAM role that grants access.


=head2 B<REQUIRED> TargetArn => Str

  The ARN of the SNS topic.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

