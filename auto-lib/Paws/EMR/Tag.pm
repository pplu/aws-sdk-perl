package Paws::EMR::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A key/value pair containing user-defined metadata that you can
associate with an Amazon EMR resource. Tags make it easier to associate
clusters in various ways, such as grouping clusters to track your
Amazon EMR resource allocation costs. For more information, see Tag
Clusters
(http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).

=head1 ATTRIBUTES


=head2 Key => Str

  A user-defined key, which is the minimum required information for a
valid tag. For more information, see Tag
(http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).


=head2 Value => Str

  A user-defined value, which is optional in a tag. For more information,
see Tag Clusters
(http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

