package Paws::CostExplorer::DimensionValues;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::DimensionValues

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::DimensionValues object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::DimensionValues object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

The metadata that you can use to filter and group your results. You can
use C<GetDimensionValues> to find specific values.

=head1 ATTRIBUTES


=head2 Key => Str

  The names of the metadata types that you can use to filter and group
your results. For example, C<AZ> returns a list of Availability Zones.


=head2 Values => ArrayRef[Str|Undef]

  The metadata values that you can use to filter and group your results.
You can use C<GetDimensionValues> to find specific values.

Valid values for the C<SERVICE> dimension are C<Amazon Elastic Compute
Cloud - Compute>, C<Amazon Elasticsearch Service>, C<Amazon
ElastiCache>, C<Amazon Redshift>, and C<Amazon Relational Database
Service>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

