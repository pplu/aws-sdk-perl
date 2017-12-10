package Paws::KMS::Tag;
  use Moose;
  has TagKey => (is => 'ro', isa => 'Str', required => 1);
  has TagValue => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KMS::Tag object:

  $service_obj->Method(Att1 => { TagKey => $value, ..., TagValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KMS::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->TagKey

=head1 DESCRIPTION

A key-value pair. A tag consists of a tag key and a tag value. Tag keys
and tag values are both required, but tag values can be empty (null)
strings.

For information about the rules that apply to tag keys and tag values,
see User-Defined Tag Restrictions
(http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
in the I<AWS Billing and Cost Management User Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagKey => Str

  The key of the tag.


=head2 B<REQUIRED> TagValue => Str

  The value of the tag.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

