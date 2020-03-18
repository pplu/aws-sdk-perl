package Paws::Pinpoint::ResultRowValue;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ResultRowValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ResultRowValue object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ResultRowValue object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Provides a single value and metadata about that value as part of an
array of query results for a standard metric that applies to an
application, campaign, or journey.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The friendly name of the metric whose value is specified by the Value
property.


=head2 B<REQUIRED> Type => Str

  The data type of the value specified by the Value property.


=head2 B<REQUIRED> Value => Str

  In a Values object, the value for the metric that the query retrieved
data for. In a GroupedBys object, the value for the field that was used
to group data in a result set that contains multiple results (Values
objects).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

