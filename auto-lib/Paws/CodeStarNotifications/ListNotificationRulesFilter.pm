package Paws::CodeStarNotifications::ListNotificationRulesFilter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::ListNotificationRulesFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStarNotifications::ListNotificationRulesFilter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStarNotifications::ListNotificationRulesFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Information about a filter to apply to the list of returned
notification rules. You can filter by event type, owner, resource, or
target.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the attribute you want to use to filter the returned
notification rules.


=head2 B<REQUIRED> Value => Str

  The value of the attribute you want to use to filter the returned
notification rules. For example, if you specify filtering by
I<RESOURCE> in Name, you might specify the ARN of a pipeline in AWS
CodePipeline for the value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStarNotifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

