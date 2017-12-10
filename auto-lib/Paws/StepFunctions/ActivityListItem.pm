package Paws::StepFunctions::ActivityListItem;
  use Moose;
  has ActivityArn => (is => 'ro', isa => 'Str', request_name => 'activityArn', traits => ['NameInRequest'], required => 1);
  has CreationDate => (is => 'ro', isa => 'Str', request_name => 'creationDate', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ActivityListItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::ActivityListItem object:

  $service_obj->Method(Att1 => { ActivityArn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::ActivityListItem object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityArn

=head1 DESCRIPTION

Contains details about an activity.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivityArn => Str

  The Amazon Resource Name (ARN) that identifies the activity.


=head2 B<REQUIRED> CreationDate => Str

  The date the activity is created.


=head2 B<REQUIRED> Name => Str

  The name of the activity.

A name must I<not> contain:

=over

=item *

whitespace

=item *

brackets C<E<lt> E<gt> { } [ ]>

=item *

wildcard characters C<? *>

=item *

special characters C<" # % \ ^ | ~ ` $ & , ; : />

=item *

control characters (C<U+0000-001F>, C<U+007F-009F>)

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

