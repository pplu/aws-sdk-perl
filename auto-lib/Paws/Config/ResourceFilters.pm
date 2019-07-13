package Paws::Config::ResourceFilters;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ResourceFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ResourceFilters object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., ResourceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ResourceFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Filters the results by resource account ID, region, resource ID, and
resource name.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The 12-digit source account ID.


=head2 Region => Str

  The source region.


=head2 ResourceId => Str

  The ID of the resource.


=head2 ResourceName => Str

  The name of the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

