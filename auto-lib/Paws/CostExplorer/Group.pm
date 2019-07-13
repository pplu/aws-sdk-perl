package Paws::CostExplorer::Group;
  use Moose;
  has Keys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Metrics => (is => 'ro', isa => 'Paws::CostExplorer::Metrics');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::Group

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::Group object:

  $service_obj->Method(Att1 => { Keys => $value, ..., Metrics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::Group object:

  $result = $service_obj->Method(...);
  $result->Att1->Keys

=head1 DESCRIPTION

One level of grouped data in the results.

=head1 ATTRIBUTES


=head2 Keys => ArrayRef[Str|Undef]

  The keys that are included in this group.


=head2 Metrics => L<Paws::CostExplorer::Metrics>

  The metrics that are included in this group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

