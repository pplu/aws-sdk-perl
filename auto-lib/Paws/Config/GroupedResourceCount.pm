package Paws::Config::GroupedResourceCount;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has ResourceCount => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::GroupedResourceCount

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::GroupedResourceCount object:

  $service_obj->Method(Att1 => { GroupName => $value, ..., ResourceCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::GroupedResourceCount object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupName

=head1 DESCRIPTION

The count of resources that are grouped by the group name.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupName => Str

  The name of the group that can be region, account ID, or resource type.
For example, region1, region2 if the region was chosen as
C<GroupByKey>.


=head2 B<REQUIRED> ResourceCount => Int

  The number of resources in the group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

