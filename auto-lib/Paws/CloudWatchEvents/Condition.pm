package Paws::CloudWatchEvents::Condition;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::Condition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::Condition object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::Condition object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A JSON string which you can use to limit the event bus permissions you
are granting to only accounts that fulfill the condition. Currently,
the only supported condition is membership in a certain AWS
organization. The string must contain C<Type>, C<Key>, and C<Value>
fields. The C<Value> field specifies the ID of the AWS organization.
Following is an example value for C<Condition>:

C<'{"Type" : "StringEquals", "Key": "aws:PrincipalOrgID", "Value":
"o-1234567890"}'>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  Specifies the key for the condition. Currently the only supported key
is C<aws:PrincipalOrgID>.


=head2 B<REQUIRED> Type => Str

  Specifies the type of condition. Currently the only supported value is
C<StringEquals>.


=head2 B<REQUIRED> Value => Str

  Specifies the value for the key. Currently, this must be the ID of the
organization.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

