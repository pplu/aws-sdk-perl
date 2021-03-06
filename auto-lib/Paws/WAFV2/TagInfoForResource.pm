# Generated by default/object.tt
package Paws::WAFV2::TagInfoForResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str');
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::Tag]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::TagInfoForResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFV2::TagInfoForResource object:

  $service_obj->Method(Att1 => { ResourceARN => $value, ..., TagList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFV2::TagInfoForResource object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceARN

=head1 DESCRIPTION

The collection of tagging definitions for an Amazon Web Services
resource. Tags are key:value pairs that you can use to categorize and
manage your resources, for purposes like billing or other management.
Typically, the tag key represents a category, such as "environment",
and the tag value represents a specific value within that category,
such as "test," "development," or "production". Or you might set the
tag key to "customer" and the value to the customer name or ID. You can
specify one or more tags to add to each Amazon Web Services resource,
up to 50 tags for a resource.

You can tag the Amazon Web Services resources that you manage through
WAF: web ACLs, rule groups, IP sets, and regex pattern sets. You can't
manage or view tags through the WAF console.

=head1 ATTRIBUTES


=head2 ResourceARN => Str

The Amazon Resource Name (ARN) of the resource.


=head2 TagList => ArrayRef[L<Paws::WAFV2::Tag>]

The array of Tag objects defined for the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

