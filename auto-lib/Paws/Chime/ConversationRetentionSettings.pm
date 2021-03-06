# Generated by default/object.tt
package Paws::Chime::ConversationRetentionSettings;
  use Moose;
  has RetentionDays => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ConversationRetentionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::ConversationRetentionSettings object:

  $service_obj->Method(Att1 => { RetentionDays => $value, ..., RetentionDays => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::ConversationRetentionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->RetentionDays

=head1 DESCRIPTION

The retention settings that determine how long to retain conversation
messages for an Amazon Chime Enterprise account.

=head1 ATTRIBUTES


=head2 RetentionDays => Int

The number of days for which to retain conversation messages.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

