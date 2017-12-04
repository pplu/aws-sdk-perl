package Paws::DS::EventTopic;
  use Moose;
  has CreatedDateTime => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');
  has TopicName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::EventTopic

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::EventTopic object:

  $service_obj->Method(Att1 => { CreatedDateTime => $value, ..., TopicName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::EventTopic object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDateTime

=head1 DESCRIPTION

Information about SNS topic and AWS Directory Service directory
associations.

=head1 ATTRIBUTES


=head2 CreatedDateTime => Str

  The date and time of when you associated your directory with the SNS
topic.


=head2 DirectoryId => Str

  The Directory ID of an AWS Directory Service directory that will
publish status messages to an SNS topic.


=head2 Status => Str

  The topic registration status.


=head2 TopicArn => Str

  The SNS topic ARN (Amazon Resource Name).


=head2 TopicName => Str

  The name of an AWS SNS topic the receives status messages from the
directory.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

