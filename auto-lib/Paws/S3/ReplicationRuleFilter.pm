# Generated from default/object.tt
package Paws::S3::ReplicationRuleFilter;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_ReplicationRuleAndOperator S3_Tag/;
  has And => (is => 'ro', isa => S3_ReplicationRuleAndOperator);
  has Prefix => (is => 'ro', isa => Str);
  has Tag => (is => 'ro', isa => S3_Tag);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Prefix' => {
                             'type' => 'Str'
                           },
               'And' => {
                          'class' => 'Paws::S3::ReplicationRuleAndOperator',
                          'type' => 'S3_ReplicationRuleAndOperator'
                        },
               'Tag' => {
                          'class' => 'Paws::S3::Tag',
                          'type' => 'S3_Tag'
                        }
             }
}
;
    return $Params_map;
  }


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

A filter that identifies the subset of objects to which the replication
rule applies. A C<Filter> must specify exactly one C<Prefix>, C<Tag>,
or an C<And> child element.

=head1 ATTRIBUTES


=head2 And => S3_ReplicationRuleAndOperator

  A container for specifying rule filters. The filters determine the
subset of objects to which the rule applies. This element is required
only if you specify more than one filter. For example:

=over

=item *

If you specify both a C<Prefix> and a C<Tag> filter, wrap these filters
in an C<And> tag.

=item *

If you specify a filter based on multiple tags, wrap the C<Tag>
elements in an C<And> tag.

=back



=head2 Prefix => Str

  An object keyname prefix that identifies the subset of objects to which
the rule applies.


=head2 Tag => S3_Tag

  A container for specifying a tag key and value.

The rule applies only to objects that have the tag in their tag set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

