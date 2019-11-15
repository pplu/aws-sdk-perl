package Paws::CodeStarNotifications::ListTargetsFilter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::ListTargetsFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStarNotifications::ListTargetsFilter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStarNotifications::ListTargetsFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Information about a filter to apply to the list of returned targets.
You can filter by target type, address, or status. For example, to
filter results to notification rules that have active Amazon SNS topics
as targets, you could specify a ListTargetsFilter Name as TargetType
and a Value of SNS, and a Name of TARGET_STATUS and a Value of ACTIVE.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the attribute you want to use to filter the returned
targets.


=head2 B<REQUIRED> Value => Str

  The value of the attribute you want to use to filter the returned
targets. For example, if you specify I<SNS> for the Target type, you
could specify an Amazon Resource Name (ARN) for a topic as the value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStarNotifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

