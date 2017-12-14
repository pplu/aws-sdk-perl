package Paws::SES::MessageTag;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::MessageTag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::MessageTag object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::MessageTag object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Contains the name and value of a tag that you can provide to
C<SendEmail> or C<SendRawEmail> to apply to an email.

Message tags, which you use with configuration sets, enable you to
publish email sending events. For information about using configuration
sets, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the tag. The name must:

=over

=item *

This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
underscores (_), or dashes (-).

=item *

Contain less than 256 characters.

=back



=head2 B<REQUIRED> Value => Str

  The value of the tag. The value must:

=over

=item *

This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
underscores (_), or dashes (-).

=item *

Contain less than 256 characters.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

