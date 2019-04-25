package Paws::IAM::ContextEntry;
  use Moose;
  has ContextKeyName => (is => 'ro', isa => 'Str');
  has ContextKeyType => (is => 'ro', isa => 'Str');
  has ContextKeyValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ContextEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::ContextEntry object:

  $service_obj->Method(Att1 => { ContextKeyName => $value, ..., ContextKeyValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::ContextEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->ContextKeyName

=head1 DESCRIPTION

Contains information about a condition context key. It includes the
name of the key and specifies the value (or values, if the context key
supports multiple values) to use in the simulation. This information is
used when evaluating the C<Condition> elements of the input policies.

This data type is used as an input parameter to C< SimulateCustomPolicy
> and C< SimulateCustomPolicy >.

=head1 ATTRIBUTES


=head2 ContextKeyName => Str

  The full name of a condition context key, including the service prefix.
For example, C<aws:SourceIp> or C<s3:VersionId>.


=head2 ContextKeyType => Str

  The data type of the value (or values) specified in the
C<ContextKeyValues> parameter.


=head2 ContextKeyValues => ArrayRef[Str|Undef]

  The value (or values, if the condition context key supports multiple
values) to provide to the simulation when the key is referenced by a
C<Condition> element in an input policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

