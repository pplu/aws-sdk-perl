package Paws::Backup::Condition;
  use Moose;
  has ConditionKey => (is => 'ro', isa => 'Str', required => 1);
  has ConditionType => (is => 'ro', isa => 'Str', required => 1);
  has ConditionValue => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::Condition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::Condition object:

  $service_obj->Method(Att1 => { ConditionKey => $value, ..., ConditionValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::Condition object:

  $result = $service_obj->Method(...);
  $result->Att1->ConditionKey

=head1 DESCRIPTION

Contains an array of triplets made up of a condition type (such as
C<StringEquals>), a key, and a value. Conditions are used to filter
resources in a selection that is assigned to a backup plan.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConditionKey => Str

  The key in a key-value pair. For example, in
C<"ec2:ResourceTag/Department": "accounting">,
C<"ec2:ResourceTag/Department"> is the key.


=head2 B<REQUIRED> ConditionType => Str

  An operation, such as C<StringEquals>, that is applied to a key-value
pair used to filter resources in a selection.


=head2 B<REQUIRED> ConditionValue => Str

  The value in a key-value pair. For example, in
C<"ec2:ResourceTag/Department": "accounting">, C<"accounting"> is the
value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

