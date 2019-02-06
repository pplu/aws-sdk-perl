package Paws::SageMaker::NestedFilters;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Filter]', required => 1);
  has NestedPropertyName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::NestedFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::NestedFilters object:

  $service_obj->Method(Att1 => { Filters => $value, ..., NestedPropertyName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::NestedFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->Filters

=head1 DESCRIPTION

Defines a list of C<NestedFilters> objects. To satisfy the conditions
specified in the C<NestedFilters> call, a resource must satisfy the
conditions of all of the filters.

For example, you could define a C<NestedFilters> using the training
job's C<InputDataConfig> property to filter on C<Channel> objects.

A C<NestedFilters> object contains multiple filters. For example, to
find all training jobs whose name contains C<train> and that have
C<cat/data> in their C<S3Uri> (specified in C<InputDataConfig>), you
need to create a C<NestedFilters> object that specifies the
C<InputDataConfig> property with the following C<Filter> objects:

=over

=item *

C<'{Name:"InputDataConfig.ChannelName", "Operator":"EQUALS",
"Value":"train"}',>

=item *

C<'{Name:"InputDataConfig.DataSource.S3DataSource.S3Uri",
"Operator":"CONTAINS", "Value":"cat/data"}'>

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Filters => ArrayRef[L<Paws::SageMaker::Filter>]

  A list of filters. Each filter acts on a property. Filters must contain
at least one C<Filters> value. For example, a C<NestedFilters> call
might include a filter on the C<PropertyName> parameter of the
C<InputDataConfig> property:
C<InputDataConfig.DataSource.S3DataSource.S3Uri>.


=head2 B<REQUIRED> NestedPropertyName => Str

  The name of the property to use in the nested filters. The value must
match a listed property name, such as C<InputDataConfig>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

