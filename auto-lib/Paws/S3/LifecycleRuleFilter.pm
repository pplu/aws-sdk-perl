package Paws::S3::LifecycleRuleFilter;
  use Moose;
  has And => (is => 'ro', isa => 'Paws::S3::LifecycleRuleAndOperator');
  has Prefix => (is => 'ro', isa => 'Str');
  has Tag => (is => 'ro', isa => 'Paws::S3::Tag');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::LifecycleRuleFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::LifecycleRuleFilter object:

  $service_obj->Method(Att1 => { And => $value, ..., Tag => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::LifecycleRuleFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->And

=head1 DESCRIPTION

The Filter is used to identify objects that a Lifecycle Rule applies
to. A Filter must have exactly one of Prefix, Tag, or And specified.

=head1 ATTRIBUTES


=head2 And => L<Paws::S3::LifecycleRuleAndOperator>

  


=head2 Prefix => Str

  Prefix identifying one or more objects to which the rule applies.


=head2 Tag => L<Paws::S3::Tag>

  This tag must exist in the object's tag set in order for the rule to
apply.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

