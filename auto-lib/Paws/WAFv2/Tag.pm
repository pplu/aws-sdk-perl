package Paws::WAFv2::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

A collection of key:value pairs associated with an AWS resource. The
key:value pair can be anything you define. Typically, the tag key
represents a category (such as "environment") and the tag value
represents a specific value within that category (such as "test,"
"development," or "production"). You can add up to 50 tags to each AWS
resource.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  Part of the key:value pair that defines a tag. You can use a tag key to
describe a category of information, such as "customer." Tag keys are
case-sensitive.


=head2 B<REQUIRED> Value => Str

  Part of the key:value pair that defines a tag. You can use a tag value
to describe a specific value within a category, such as "companyA" or
"companyB." Tag values are case-sensitive.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

