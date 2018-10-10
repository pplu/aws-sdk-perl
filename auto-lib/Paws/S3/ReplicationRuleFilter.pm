package Paws::S3::ReplicationRuleFilter;
  use Moose;
  has And => (is => 'ro', isa => 'Paws::S3::ReplicationRuleAndOperator');
  has Prefix => (is => 'ro', isa => 'Str');
  has Tag => (is => 'ro', isa => 'Paws::S3::Tag');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ReplicationRuleFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::ReplicationRuleFilter object:

  $service_obj->Method(Att1 => { And => $value, ..., Tag => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ReplicationRuleFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->And

=head1 DESCRIPTION

Filter that identifies subset of objects to which the replication rule
applies. A C<Filter> must specify exactly one C<Prefix>, C<Tag>, or an
C<And> child element.

=head1 ATTRIBUTES


=head2 And => L<Paws::S3::ReplicationRuleAndOperator>

  Container for specifying rule filters. These filters determine the
subset of objects to which the rule applies. The element is required
only if you specify more than one filter. For example:

=over

=item *

You specify both a C<Prefix> and a C<Tag> filters. Then you wrap these
in an C<And> tag.

=item *

You specify filter based on multiple tags. Then you wrap the C<Tag>
elements in an C<And> tag.

=back



=head2 Prefix => Str

  Object keyname prefix that identifies subset of objects to which the
rule applies.


=head2 Tag => L<Paws::S3::Tag>

  Container for specifying a tag key and value.

The rule applies only to objects having the tag in its tagset.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

